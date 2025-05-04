/**
 * Alloca.h:
 *      @Descripiton    :   The translator for the llvm::AllocaInst instruction
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef ALLOCA_H
#define ALLOCA_H

#include <include/llvm/LLVM.h>

#include <include/Context.h>

/**
 * The translator for the llvm::AllocaInst instruction
 */
class AllocaTranslator {
public:
    /**
      * Translating the instruction into PPL code
      * @param Inst The instruction to be translated
      * @param Contxt The context of the module
      * @return The translated code in PPL
      */
    static std::string Translate(llvm::AllocaInst *Inst, Context &Contxt);
};

#endif //ALLOCA_H
