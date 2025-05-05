/**
 * Function.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/Function.h>
#include <include/translator/BasicBlock.h>

#include <include/TemplateManager.h>

std::string FunctionTranslator::Translate(llvm::Function &Function, Context &Contxt) {
	// We just discard the previous pointer reference mapping data
	Contxt.PointerRef.clear();

    // We just skip the declaration function, like the sys lib function
    // or the llvm.xxx function
    if (Function.isDeclaration()) {
        return "";
    }

    auto name = Function.getName().str();
    bool isExport = name == "main" ? true : false;
    auto args = AnalyzingParameters(Function, Contxt);
    std::vector<std::string> labels;
    std::map<std::string, std::string> labelCodeMapping;
    std::string firstLabel;

    for (auto &block: Function) {
        if (&block == &(*Function.begin())) {
            firstLabel = BasicBlockTranslator::Translate(block, Contxt);
        } else {
            auto labelName = AnalyzingLabel(block, Contxt);
            labels.push_back(AnalyzingLabel(block, Contxt));
            labelCodeMapping.insert({labelName, BasicBlockTranslator::Translate(block, Contxt)});
        }
    }

    inja::json data;
    data["export"] = isExport;
    data["name"] = name;
    data["args"] = args;
    data["predefine"] = AnalyzingPreDefines(Function, Contxt);
    data["firstBlock"] = firstLabel;
    data["labels"] = labels;

    TemplateManager::Instance().GetEnv().add_callback("getLabelCode", 1, [&labelCodeMapping](inja::Arguments &Args) {
        return labelCodeMapping[Args.at(0)->get<std::string>()];
    });

    return TemplateManager::Instance().RenderFile(TemplateManager::Function, data);
}

std::string FunctionTranslator::AnalyzingParameters(llvm::Function &Function, Context &Contxt) {
    std::vector<std::string> args;
    for (auto &arg: Function.args()) {
        auto name = arg.getName().str();
        if (!arg.hasName()) {
            name = LLVMAnonyExtractor::Extract(&arg, Contxt);
        }

        args.push_back(name);
    }

    inja::json data;
    data["args"] = args;
    data["num"] = args.size();

    return TemplateManager::Instance().RenderFile(TemplateManager::Args, data);
}

std::string FunctionTranslator::AnalyzingPreDefines(llvm::Function &Function, Context &Contxt) {
    inja::json data;
	data["vars"] = {};
    for (auto &blocks: Function) {
        for (auto &inst: blocks) {
            // Scan for the result variable definition;
            if (!inst.getType()->isVoidTy()) {
                data["vars"].push_back(LLVMAnonyExtractor::Extract(&inst, Contxt));
            }
        }
    }

	data["hasDefine"] = !data["vars"].empty();

    return TemplateManager::Instance().RenderFile(TemplateManager::VariablePredefine, data);
}

std::string FunctionTranslator::AnalyzingLabel(llvm::BasicBlock &Block, Context &Contxt) {
    if (Block.hasName()) {
        return Block.getName().str();
    }

    return LLVMAnonyExtractor::Extract(&Block, Contxt);
}
