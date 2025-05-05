/**
 * GetElementPtr.h:
 *      @Descripiton    :   The translator for the llvm::GetElementPtrInst instruction
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/5/2025
 */
#ifndef GETELEMENTPTR_H
#define GETELEMENTPTR_H

#include <include/llvm/LLVM.h>

#include <include/Context.h>

/**
 * The translator for the llvm::AllocaInst instruction
 */
class GetElementPtrTranslator {
public:
	/**
	  * Translating the instruction into PPL code
	  * @param Inst The instruction to be translated
	  * @param Contxt The context of the module
	  * @return The translated code in PPL
	  */
	static std::string Translate(llvm::GetElementPtrInst *Inst, Context &Contxt);
};

#endif //GETELEMENTPTR_H
