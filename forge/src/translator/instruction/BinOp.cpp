/**
 * BinOp.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/Constant.h>
#include <include/translator/instruction/BinOp.h>

#include <include/TemplateManager.h>

std::string BinOpTranslator::Translate(llvm::BinaryOperator *Inst, Context &Contxt) {
	inja::json data;

	data["resultVariable"] = ResultVariableAnalyzer::Analyze(Inst, Contxt);

	std::string opString[Inst->getNumOperands()];
	for (unsigned i = 0; i < Inst->getNumOperands(); ++i) {
		llvm::Value *op = Inst->getOperand(i);
		if (op->hasName()) {
			opString[i] = op->getName();
		} else if (auto *constant = dyn_cast<llvm::Constant>(op)) {
			opString[i] = ConstantTranslator::Translate(*constant, Contxt);
		} else {
			opString[i] = LLVMAnonyExtractor::Extract(op, Contxt);
		}
	}

	data["left"] = opString[0];
	data["right"] = opString[1];
	data["op"] = GetOpSymbol(Inst->getOpcode());

	if (data["op"] == "BITSL" || data["op"] == "BITSR") {
		return TemplateManager::Instance().RenderFile(TemplateManager::BinaryOperationFunc, data);
	} else {
		return TemplateManager::Instance().RenderFile(TemplateManager::BinaryOperation, data);
	}
}

const char *BinOpTranslator::GetOpSymbol(unsigned Opcode) {
	using namespace llvm;
	switch (Opcode) {
	case Instruction::Add:
		return "+";
	case Instruction::Sub:
		return "-";
	case Instruction::Mul:
		return "*";
	case Instruction::UDiv:
		return "/";
	case Instruction::SDiv:
		return "/";
	case Instruction::URem:
		return "mod";
	case Instruction::SRem:
		return "mod";
	case Instruction::And:
		return "and";
	case Instruction::Or:
		return "or";
	case Instruction::Xor:
		return "xor";
	case Instruction::Shl:
		return "BITSL";
	case Instruction::LShr:
		return "BITSR";
	case Instruction::AShr:
		return "BITSR";
	default:
		return nullptr;
	}
}
