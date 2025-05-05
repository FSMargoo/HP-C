/**
 * Function.h:
 *      @Descripiton    :   The translator for the llvm::Function object
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef FUNCTION_H
#define FUNCTION_H

#include <include/Context.h>

#include <include/llvm/LLVM.h>

/**
 * The translator for the llvm::Function object
 */
class FunctionTranslator {
public:
    /**
     * Translating a llvm::Function object to the PPL code
     * @param Function The function to be translated
     * @param Contxt The context of the module
     * @return The translated code of function
     */
    static std::string Translate(llvm::Function &Function, Context &Contxt);

private:
    /**
     * Analyizing the function parameters
     * @param Function The function to be analyzed
     * @param Contxt The context of the module
     * @return The parameter definition string
     */
    static std::string AnalyzingParameters(llvm::Function &Function, Context &Contxt);

    /**
     * Analyzing the predefines of the variables in the function
     * @param Function The function be analyzed
     * @param Contxt The context of the module
     * @return The predefine of variables in PPL code
     */
    static std::string AnalyzingPreDefines(llvm::Function &Function, Context &Contxt);

    /**
     * Analyzing the label name of the block
     * @param Block The block to be analyzed
     * @param Contxt The context of the module
     * @return The label name of the block
     */
    static std::string AnalyzingLabel(llvm::BasicBlock &Block, Context &Contxt);
};

#endif //FUNCTION_H
