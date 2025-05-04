/**
 * ICmp.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/instruction/ICmp.h>
#include <include/translator/instruction/ResultAnalyze.h>

#include <include/translator/Constant.h>

#include <include/TemplateManager.h>

std::string ICmpTranslator::Translate(llvm::ICmpInst *Inst, Context &Contxt) {
	auto resultVariable = ResultVariableAnalyzer::Analyze(Inst);

	inja::json data;
	data["result"] = resultVariable;
	data["cond"] = TranslateCond(Inst, Contxt);

	return TemplateManager::Instance().RenderFile(TemplateManager::ICmpAssignment, data);
}

std::string ICmpTranslator::TranslateCond(llvm::ICmpInst *Inst, Context &Contxt) {
	auto pred = Inst->getPredicate();
	auto predString = PredicateToString(pred);

	llvm::Value *left = Inst->getOperand(0);
	llvm::Value *right = Inst->getOperand(1);

	auto leftValue = ConstantTranslator::Translate(*static_cast<llvm::Constant *>(left), Contxt);
	auto rightValue = ConstantTranslator::Translate(*static_cast<llvm::Constant *>(right), Contxt);

	leftValue = leftValue.empty() ? LLVMAnonyExtractor::Extract(left) : leftValue;
	rightValue = rightValue.empty() ? LLVMAnonyExtractor::Extract(right) : rightValue;

	inja::json data;
	data["left"] = leftValue;
	data["right"] = rightValue;
	data["op"] = predString;

	return TemplateManager::Instance().RenderFile(TemplateManager::Cond, data);
}

const char *ICmpTranslator::PredicateToString(llvm::ICmpInst::Predicate Pred) {
	switch (Pred) {
	case llvm::ICmpInst::ICMP_EQ:
		return "==";
	case llvm::ICmpInst::ICMP_NE:
		return "≠";
	case llvm::ICmpInst::ICMP_UGT:
		return ">";
	case llvm::ICmpInst::ICMP_UGE:
		return "≥";
	case llvm::ICmpInst::ICMP_ULT:
		return "<";
	case llvm::ICmpInst::ICMP_ULE:
		return "≤";
	case llvm::ICmpInst::ICMP_SGT:
		return ">";
	case llvm::ICmpInst::ICMP_SGE:
		return "≥";
	case llvm::ICmpInst::ICMP_SLT:
		return "<";
	case llvm::ICmpInst::ICMP_SLE:
		return "≤";
	default:
		return "==";
	}
}
