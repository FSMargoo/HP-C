/**
 * Constant.h:
 *      @Descripiton    :   The translator for the constant in the LLVM
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef CONSTANT_H
#define CONSTANT_H

#include <include/llvm/LLVM.h>

#include <include/Context.h>

/**
 * The translator for the LLVM::Constant object
 */
class ConstantTranslator {
public:
    /**
     * Translating the constant to the PPL code
     * @param Constant The constant to be translated
     * @param Contxt The context of the translation
     * @return The PPL code of the constant, when it returns an empty string, meaning it
     * will use zero initializer
     */
    static std::string Translate(llvm::Constant &Constant, Context &Contxt);
};

#endif //CONSTANT_H
