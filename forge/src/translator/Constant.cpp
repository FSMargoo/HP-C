/**
 * Constant.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/Constant.h>

#include <inja/inja.hpp>

using namespace llvm;

std::string ConstantTranslator::Translate(llvm::Constant &Constant, Context &Contxt) {
    using namespace llvm;

    if (const UndefValue *_ = dyn_cast<UndefValue>(&Constant)) {
        return "";
    }
    if (const BlockAddress *_ = dyn_cast<BlockAddress>(&Constant)) {
        return "";
    }

    // Processing the constant initializer
    if (const ConstantInt *ci = dyn_cast<ConstantInt>(&Constant)) {
        return std::to_string(ci->getValue().getSExtValue());
    }
    if (const ConstantFP *cfp = dyn_cast<ConstantFP>(&Constant)) {
        return std::to_string(cfp->getValueAPF().convertToDouble());
    }

    // Processing the zero initializer
    if (isa<ConstantAggregateZero>(&Constant)) {
        return "";
    }

    // Check for ConstantDataSequential (arrays/vectors of simple data)
    if (const ConstantDataSequential *cds = dyn_cast<ConstantDataSequential>(&Constant)) {
        // If it strings, directly return
        if (cds->isString()) {
            auto str = cds->getAsString().str();

            // Removing the \0 tag of the string
            str = str.substr(0, str.size() - 1);

            return LLVMStringReversal::Reverse(str);
        }

        // Check for the sequential data
        inja::json data;
        const std::string templateString = "{ {% for element in elements %}{{ element }}{% if loop.index1 < num %}, {% endif %}{% endfor %} }";

        data["num"] = cds->getNumElements();
        for (unsigned i = 0; i < cds->getNumElements(); ++i) {
            auto element = cds->getElementAsConstant(i);
            data["elements"].push_back(Translate(*element, Contxt));
        }

        return inja::render(templateString, data);
    }

    // Check for ConstantArray
    if (const ConstantArray *ca = dyn_cast<ConstantArray>(&Constant)) {
        inja::json data;
        const std::string templateString = "{ {% for element in elements %}{{ element }}{% if loop.index1 < num %}, {% endif %}{% endfor %} }";

        data["num"] = ca->getType()->getNumElements();
        for (unsigned i = 0; i < ca->getType()->getNumElements(); ++i) {
            data["elements"].push_back(Translate(*ca->getOperand(i), Contxt));
        }

        return inja::render(templateString, data);
    }

    // Check for global reference
    if (auto *globalReference = dyn_cast<GlobalValue>(&Constant)) {
        return "$" + globalReference->getName().str();
    }

    // Check for ConstantStruct
    if (const ConstantStruct *cs = dyn_cast<ConstantStruct>(&Constant)) {
        inja::json data;
        const std::string templateString = "{ {% for element in elements %}{{ element }}{% if loop.index1 < num %}, {% endif %}{% endfor %} }";

        data["num"] = cs->getType()->getNumElements();
        for (unsigned i = 0; i < cs->getType()->getNumElements(); ++i) {
            data["elements"].push_back(Translate(*cs->getOperand(i), Contxt));
        }

        return inja::render(templateString, data);
    }

    // Check for ConstantVector
    if (const ConstantVector *CV = dyn_cast<ConstantVector>(&Constant)) {
        // TODO: Processing the constant vector

        for (unsigned i = 0; i < CV->getType()->getNumElements(); ++i) {
            return Translate(*CV->getOperand(i), Contxt);
        }

        return "";
    }

    // Check for ConstantExpr
    if (const ConstantExpr *CE = dyn_cast<ConstantExpr>(&Constant)) {
        // TODO: Processing the constant expression

        // Recursively handle operands of the expression
        for (unsigned i = 0; i < CE->getNumOperands(); ++i) {
            return Translate(*CE->getOperand(i), Contxt);
        }
        return "";
    }

    // Check for ConstantPointerNull
    if (isa<ConstantPointerNull>(&Constant)) {
        return "";
    }


    // Fallback for other Constant subclasses
    return "";
}