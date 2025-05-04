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

    data["resultVariable"] = ResultVariableAnalyzer::Analyze(Inst);

    std::string opString[Inst->getNumOperands()];
    for (unsigned i = 0; i < Inst->getNumOperands(); ++i) {
        llvm::Value *op = Inst->getOperand(i);
        if (op->hasName()) {
            opString[i] = op->getName();
        } else if (auto *constant = dyn_cast<llvm::Constant>(op)) {
            opString[i] = ConstantTranslator::Translate(*constant, Contxt);
        } else {
            opString[i] = LLVMAnonyExtractor::Extract(op);
        }
    }

    data["left"] = opString[0];
    data["right"] = opString[1];
    data["op"] = GetOpSymbol(Inst->getOpcode());

    return TemplateManager::Instance().Render(TemplateManager::BinaryOperation, data);
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
            return "%";
        case Instruction::SRem:
            return "%";
        case Instruction::And:
            return "&";
        case Instruction::Or:
            return "|";
        case Instruction::Xor:
            return "^";
        case Instruction::Shl:
            return "<<";
        case Instruction::LShr:
            return ">>";
        case Instruction::AShr:
            return ">>";
        default:
            return nullptr;
    }
}