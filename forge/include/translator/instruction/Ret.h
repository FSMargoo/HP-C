/**
 * Ret.h:
 *      @Descripiton    :   The translator for the llvm::ReturnInst instruction
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/5/2025
 */
#ifndef RET_H
#define RET_H

#include <include/llvm/LLVM.h>

#include <include/Context.h>

/**
 * The translator for the llvm::ReturnInst instruction
 */
class RetTranslator {
public:
	/**
	  * Translating the instruction into PPL code
	  * @param Inst The instruction to be translated
	  * @param Contxt The context of the module
	  * @return The translated code in PPL
	  */
	static std::string Translate(llvm::ReturnInst *Inst, Context &Contxt);
};

#endif //RET_H
