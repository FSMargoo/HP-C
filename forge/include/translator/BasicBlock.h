/**
 * BasicBlock.h:
 *      @Descripiton    :   The translator for the llvm::BasicBlock object
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef BASICBLOCK_H
#define BASICBLOCK_H

#include <include/llvm/LLVM.h>

#include <include/Context.h>

/**
 * The translator for the llvm::BasicBlock object
 */
class BasicBlockTranslator {
public:
    /**
     * Translating a basic block to PPL code
     * @param Block The block to be translated
     * @param Contxt The context of the module
     * @return The translated PPL code
     */
    static std::string Translate(llvm::BasicBlock &Block, Context &Contxt);
};

#endif //BASICBLOCK_H
