/**
 * ICmp.h:
 *      @Descripiton    :   The translator for the llvm::ICmpInst instruction
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef ICMP_H
#define ICMP_H

#include <include/llvm/LLVM.h>

#include <include/Context.h>

/**
 * The translator for the llvm::ICmpInst instruction
 */
class ICmpTranslator {
public:
	/**
	  * Translating the instruction into PPL code
	  * @param Inst The instruction to be translated
	  * @param Contxt The context of the module
	  * @return The translated code in PPL
	  */
	static std::string Translate(llvm::ICmpInst *Inst, Context &Contxt);
	/**
	  * Translating the condition instruction into PPL code
	  * @param Inst The instruction to be translated
	  * @param Contxt The context of the module
	  * @return The translated condition code in PPL
	  */
	static std::string TranslateCond(llvm::ICmpInst *Inst, Context &Contxt);

private:
	/**
	 * Converting a predicate into string
	 * @param Pred The predicate to be converted
	 * @return The converted predicate string
	 */
	static const char *PredicateToString(llvm::ICmpInst::Predicate Pred);
};

#endif //ICMP_H
