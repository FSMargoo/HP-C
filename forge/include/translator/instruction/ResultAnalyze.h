/**
 * ResultAnalyze.h:
 *      @Descripiton    :   The result variable analyzer
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef RESULTANALYZE_H
#define RESULTANALYZE_H

#include <include/llvm/LLVM.h>

#include <include/Context.h>

/**
 * The result variable analyzer for an instruction
 */
class ResultVariableAnalyzer {
public:
    /**
     * Analyzing the result variable of an instruction
     * @param Value The value to be analyzed
     * @param Contxt The context of the current scope
     * @return The result variable assignment statement, if there is no
     * result variable, it will return empty string
     */
    static std::string Analyze(llvm::Value *Value, Context &Contxt);
	/**
	 * Analyzing the result variable name of an instruction
	 * @param Value The value to be analyzed
	 * @param Contxt The context of the current scope
	 * @return The result variable name, if there is no
	 * result variable, it will return empty string
	 */
	static std::string AnalyzeName(llvm::Value *Value, Context &Contxt);
};

#endif //RESULTANALYZE_H
