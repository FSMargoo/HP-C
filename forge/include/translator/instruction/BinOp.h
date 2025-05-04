/**
 * BinOp.h:
 *      @Descripiton    :   The translator for the llvm::BinaryOperator instruction
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef BINOP_H
#define BINOP_H

#include <include/Context.h>

#include <include/llvm/LLVM.h>

#include <include/translator/instruction/ResultAnalyze.h>

/**
 * The translator for the llvm::BinaryOperator instruction
 */
class BinOpTranslator {
public:
    /**
     * Translating the instruction into PPL code
     * @param Inst The instruction to be translated
     * @param Contxt The context of the module
     * @return The translated code in PPL
     */
    static std::string Translate(llvm::BinaryOperator *Inst, Context &Contxt);

private:
    /**
     * Converting the opcode into the string symbol
     * @param Opcode The opcode to be converted
     * @return The symbol of the opcode
     */
    static const char *GetOpSymbol(unsigned Opcode);
};

#endif //BINOP_H
