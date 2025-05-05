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
		auto label = GetLabel(Inst->getSuccessor(0), Contxt);

		inja::json data;
		data["newStatus"] = label;
		data["inVM"] = InLoop;

		return TemplateManager::Instance().RenderFile(TemplateManager::BranchSwitch, data);
	}
	else {
		auto trueLabel = GetLabel(Inst->getSuccessor(0), Contxt);
		auto falseLabel = GetLabel(Inst->getSuccessor(1), Contxt);
		auto cond = Inst->getCondition();

		auto condString = ConstantTranslator::Translate(*static_cast<llvm::Constant*>(cond), Contxt);
		if (auto icmp = llvm::dyn_cast<llvm::ICmpInst>(cond)) {
			condString = LLVMAnonyExtractor::Extract(icmp, Contxt);
		} else if (auto fcmp = llvm::dyn_cast<llvm::FCmpInst>(cond)) {
			condString = LLVMAnonyExtractor::Extract(icmp, Contxt);
		}

		inja::json data;
		data["trueNewStatus"] = trueLabel;
		data["falseNewStatus"] = falseLabel;
		data["cond"] = condString;
		data["inVM"] = InLoop;

		return TemplateManager::Instance().RenderFile(TemplateManager::CondBranchSwitch, data);
	}
}

std::string BrTranslator::GetLabel(llvm::BasicBlock *Block, Context &Contxt) {
	return LLVMAnonyExtractor::Extract(Block, Contxt);
}