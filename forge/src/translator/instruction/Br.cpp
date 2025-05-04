/**
 * Br.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/instruction/Br.h>
#include <include/translator/instruction/ICmp.h>

#include <include/translator/Constant.h>

#include <include/TemplateManager.h>

std::string BrTranslator::Translate(llvm::BranchInst *Inst, Context &Contxt, bool InLoop) {
	if (!Inst->isConditional()) {
		// No condition branch switch
		auto label = GetLabel(Inst->getSuccessor(0));

		inja::json data;
		data["newStatus"] = label;
		data["inVM"] = InLoop;

		return TemplateManager::Instance().RenderFile(TemplateManager::BranchSwitch, data);
	}
	else {
		auto trueLabel = GetLabel(Inst->getSuccessor(0));
		auto falseLabel = GetLabel(Inst->getSuccessor(1));
		auto cond = Inst->getCondition();

		auto condString = ConstantTranslator::Translate(*static_cast<llvm::Constant*>(cond), Contxt);
		if (llvm::ICmpInst *icmp = llvm::dyn_cast<llvm::ICmpInst>(cond)) {
			condString = LLVMAnonyExtractor::Extract(icmp);
		} else if (llvm::FCmpInst *fcmp = llvm::dyn_cast<llvm::FCmpInst>(cond)) {
			// TODO: Supporting fcmp
		}

		inja::json data;
		data["trueNewStatus"] = trueLabel;
		data["falseNewStatus"] = falseLabel;
		data["cond"] = condString;
		data["inVM"] = InLoop;

		return TemplateManager::Instance().RenderFile(TemplateManager::CondBranchSwitch, data);
	}
}

std::string BrTranslator::GetLabel(llvm::BasicBlock *Block) {
	return LLVMAnonyExtractor::Extract(Block);
}