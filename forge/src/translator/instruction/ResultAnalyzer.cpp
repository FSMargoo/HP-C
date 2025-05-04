/**
 * ResultAnalyzer.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/instruction/ResultAnalyze.h>

std::string ResultVariableAnalyzer::Analyze(llvm::Value *Value) {
    if (Value->getType()->isVoidTy()) {
        return "";
    }

    return LLVMAnonyExtractor::Extract(Value) + " := ";
}
std::string ResultVariableAnalyzer::AnalyzeName(llvm::Value *Value) {
	if (Value->getType()->isVoidTy()) {
		return "";
	}

	return LLVMAnonyExtractor::Extract(Value);
}