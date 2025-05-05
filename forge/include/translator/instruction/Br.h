/**
 * Br.h:
 *      @Descripiton    :   The translator for the llvm::BranchInst instruction
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef BR_H
#define BR_H

#include <include/llvm/LLVM.h>

#include <include/Context.h>

/**
 * The translator for the llvm::BranchInst instruction
 */
class BrTranslator {
public:
	/**
	  * Translating the instruction into PPL code
	  * @param Inst The instruction to be translated
	  * @param Contxt The context of the module
	  * @param InLoop Judge whether the current instruction is in the status machine loop
	  * @return The translated code in PPL
	  */
	static std::string Translate(llvm::BranchInst *Inst, Context &Contxt, bool InLoop);

private:
	/**
	 * Getting the label name of the basic block
	 * @param Block The block to get the label name
	 * @param Contxt The context of the module
	 * @return The label name of the basic block
	 */
	static std::string GetLabel(llvm::BasicBlock *Block, Context &Contxt);
};

#endif //BR_H
