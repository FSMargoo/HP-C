/**
 * Ret.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/5/2025
 */

#include <include/translator/instruction/Ret.h>
#include <include/translator/Constant.h>

#include <include/TemplateManager.h>

std::string RetTranslator::Translate(llvm::ReturnInst *Inst, Context &Contxt) {
	auto retType = Inst->getFunction()->getReturnType();
	if (retType->isVoidTy()) {
		return "RETURN;";
	}

	auto retValue = Inst->getReturnValue();
	inja::json data;
	if (llvm::isa<llvm::Constant>(retValue)) {
		data["value"] = ConstantTranslator::Translate(*static_cast<llvm::Constant *>(retValue), Contxt);
	}
	else {
		data["value"] = LLVMAnonyExtractor::Extract(retValue, Contxt);
	}

	return TemplateManager::Instance().RenderFile(TemplateManager::Return, data);
}