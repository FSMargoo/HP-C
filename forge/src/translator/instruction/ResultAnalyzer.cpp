/**
 * ResultAnalyzer.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/instruction/ResultAnalyze.h>

std::string ResultVariableAnalyzer::Analyze(llvm::Value *Value, Context &Contxt) {
    if (Value->getType()->isVoidTy()) {
        return "";
    }

    return LLVMAnonyExtractor::Extract(Value, Contxt) + " := ";
}
std::string ResultVariableAnalyzer::AnalyzeName(llvm::Value *Value, Context &Contxt) {
	if (Value->getType()->isVoidTy()) {
		return "";
	}

	return LLVMAnonyExtractor::Extract(Value, Contxt);
}