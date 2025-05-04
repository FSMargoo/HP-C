/**
 * Module.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/Module.h>
#include <include/translator/Variable.h>
#include <include/translator/Constant.h>

ModuleTranslator::ModuleTranslator(std::unique_ptr<llvm::Module> &Module) : _module(Module) {
}
std::string ModuleTranslator::Translate() {
    // Processing the global variable definition
    for (auto &variable : _module->globals()) {
        auto initializer = variable.getInitializer();

        llvm::outs() << variable.getName() << "\n";

        auto initializerString = ConstantTranslator::Translate(*initializer, _context);

        // If it is reference, add to the reference table
        if (!initializerString.empty() && initializerString[0] == '$') {
            _context.GlobalRef.insert({ variable.getName().str(), initializerString.substr(1) });
        }
        else {
            llvm::outs() << VariableTranslator::GlobalVariableTranslate(variable, initializerString) << "\n\n\n";
        }
    }

    for (llvm::Function &func: *_module) {
        for (llvm::BasicBlock &bb: func) {
            for (llvm::Instruction &inst: bb) {

            }
        }
    }

    return "";
}