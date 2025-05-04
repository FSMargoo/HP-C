/**
 * BasicBlock.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/BasicBlock.h>

#include <include/translator/instruction/BinOp.h>

#include <llvm-c/Core.h>

std::string BasicBlockTranslator::Translate(llvm::BasicBlock &Block, Context &Contxt) {
    std::string code;
    for (auto &inst : Block) {
        if (auto binOp = llvm::dyn_cast<llvm::BinaryOperator>(&inst)) {
            code += BinOpTranslator::Translate(binOp, Contxt) + "\n";
        }
    }

    return code;
}