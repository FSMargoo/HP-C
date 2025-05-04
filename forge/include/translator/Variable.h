/**
 * Variable.h:
 *      @Descripiton    :   The translator for variable definition
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef VARIABLE_H
#define VARIABLE_H

#include <include/llvm/LLVM.h>

class VariableTranslator {
public:
    /**
     * Translating a global variable definition
     * @param Variable The global variable
     * @param Initializer The initializer string for the variable, if keep empty means this variable
     * has no initializer
     * @return The definition code in PPL
     */
    static std::string GlobalVariableTranslate(llvm::GlobalVariable &Variable, const std::string &Initializer);

    static std::string Translate();

private:
    /**
     * Expanding the llvm::ArrayType object to string
     * @param ArrType The array type pointer
     * @param Index The index list of the array
     * @return The pair of the array index list and the element type pointer
     */
    static std::pair<std::vector<int>, llvm::Type *> ArrayExpand(
        llvm::ArrayType *ArrType, std::vector<int> Index = {});
    /**
     * Expanding the zero-initializer string of the specified index
     * @param Index The index list of the array
     * @return The zero-initializer string with the specified index
     */
    static std::string ArrayZeroInitExpand(std::vector<int> Index);
};

#endif //VARIABLE_H
