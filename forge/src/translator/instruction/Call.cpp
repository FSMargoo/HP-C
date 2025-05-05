/**
 * Call.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/5/2025
 */

#include <include/translator/instruction/Call.h>
#include <include/translator/Constant.h>

#include <include/TemplateManager.h>

std::string CallTranslator::Translate(llvm::CallInst *Inst, Context &Contxt) {
	auto call = Inst->getCalledFunction();

	auto functionName = call->getName().str();
	// Process the declaration function like print and llvm.xxx
	if (call->isDeclaration()) {
		functionName = SystemCallMapping(functionName);
	}

	std::vector<std::string> args;
	for (auto count = 0; count < Inst->arg_size(); count++) {
		auto arg = static_cast<llvm::Constant *>(Inst->getArgOperand(count));

		auto argString = ConstantTranslator::Translate(*arg, Contxt);
		if (argString.empty()) {
			argString = LLVMAnonyExtractor::Extract(arg);
		}

		args.emplace_back(argString);
	}

	inja::json data;
	data["name"] = functionName;
	data["args"] = args;
	data["num"] = args.size();

	return TemplateManager::Instance().RenderFile(TemplateManager::Call, data);
}
std::string CallTranslator::SystemCallMapping(const std::string &FunctionName) {
	static std::map<std::string, std::string> CallMapping = {
		{ "print", "PRINT" }
	};

	return CallMapping[FunctionName];
}