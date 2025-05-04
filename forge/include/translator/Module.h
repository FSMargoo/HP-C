/**
 * Module.h:
 *      @Descripiton    :   The translator module for the LLVM module
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef MODULE_H
#define MODULE_H

#include <include/llvm/LLVM.h>

#include <include/Context.h>

#include <inja/inja.hpp>

/**
 * The tarnslator for a LLVM module
 */
class ModuleTranslator {
public:
    /**
     * Constructing the module translator by llvm::Module object
     * @param Module The module to be translated
     */
    ModuleTranslator(std::unique_ptr<llvm::Module> &Module);

public:
    /**
     * Translating the module into PPL code
     * @return The translated string
     */
    std::string Translate();

private:
    std::unique_ptr<llvm::Module> &_module;
    Context _context;
};

#endif //MODULE_H
