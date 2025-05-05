/**
 * Call.h:
 *      @Descripiton    :   The translator for the llvm::CallInst instruction
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/5/2025
 */
#ifndef CALL_H
#define CALL_H

#include <include/llvm/LLVM.h>

#include <include/Context.h>

/**
 * The translator for the llvm::CallInst instruction
 */
class CallTranslator {
public:
	/**
	  * Translating the instruction into PPL code
	  * @param Inst The instruction to be translated
	  * @param Contxt The context of the module
	  * @return The translated code in PPL
	  */
	static std::string Translate(llvm::CallInst *Inst, Context &Contxt);

private:
	/**
	 * Converting the function name into the HP PPL system library function name
	 * @param FunctionName The function name to be converted
	 * @return The function name in HP PPL system library
	 */
	static std::string SystemCallMapping(const std::string &FunctionName);
};

#endif //CALL_H
