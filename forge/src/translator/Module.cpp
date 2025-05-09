/**
 * Module.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/Module.h>
#include <include/translator/Variable.h>
#include <include/translator/Constant.h>
#include <include/translator/Function.h>

#include <include/TemplateManager.h>

ModuleTranslator::ModuleTranslator(std::unique_ptr<llvm::Module> &Module) : _module(Module) {
}

std::string ModuleTranslator::Translate() {
    std::string code;
    // Processing the global variable definition
    for (auto &variable: _module->globals()) {
        auto initializer = variable.getInitializer();
        auto initializerString = ConstantTranslator::Translate(*initializer, _context);

        // If it is reference, add to the reference table
        if (!initializerString.empty() && initializerString[0] == '$') {
            _context.GlobalRef.insert({variable.getName().str(), initializerString.substr(1)});
        } else {
            code += VariableTranslator::GlobalVariableTranslate(variable, initializerString, _context);

        	_context.GlobalRef.insert({variable.getName().str(), initializerString});
        }
    }

    for (llvm::Function &function: *_module) {
        code += FunctionTranslator::Translate(function, _context) + "\n";
    }

	inja::json data;
	data["program"] = code;

    return TemplateManager::Instance().RenderFile(TemplateManager::MemoryLib, data);
}
