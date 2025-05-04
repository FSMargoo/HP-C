/**
 * Function.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/Function.h>

#include <include/TemplateManager.h>

std::string FunctionTranslator::Translate(llvm::Function &Function, Context &Contxt) {
    // We just skip the declaration function, like the sys lib function
    // or the llvm.xxx function
    if (Function.isDeclaration()) {
        return "";
    }

    auto name = Function.getName().str();
    bool isExport = name == "main" ? true : false;
    auto args = AnalyzingParameters(Function);
    std::vector<std::string> codes;

    for (llvm::BasicBlock &blocks: Function) {

    }

    inja::json data;
    data["export"] = isExport;
    data["name"] = name;
    data["args"] = args;
    data["codes"] = codes;

    return TemplateManager::Instance().Render(TemplateManager::Function, data);
}

std::string FunctionTranslator::AnalyzingParameters(llvm::Function &Function) {
    std::vector<std::string> args;
    for (auto &arg : Function.args()) {
        auto name = arg.getName().str();
        if (!arg.hasName()) {
            name = LLVMAnonyExtractor::Extract(&arg);
        }

        args.push_back(name);
    }

    inja::json data;
    data["args"] = args;
    data["num"] = args.size();

    return TemplateManager::Instance().Render(TemplateManager::Args, data);
}