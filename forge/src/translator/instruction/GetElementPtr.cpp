/**
 * GetElementPtr.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/5/2025
 */

#include <include/translator/instruction/GetElementPtr.h>

std::string GetElementPtrTranslator::Translate(llvm::GetElementPtrInst *Inst, Context &Contxt) {
	auto basePtr = Inst->getPointerOperand();
	auto basePtrString = LLVMAnonyExtractor::Extract(basePtr, Contxt);
	if (auto globalVar = llvm::dyn_cast<llvm::GlobalVariable>(basePtr)) {

	}
}