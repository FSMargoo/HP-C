/**
 * BasicBlock.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/BasicBlock.h>

#include <llvm-c/Core.h>

std::string BasicBlockTranslator::Translate(llvm::BasicBlock &Block, Context &Contxt) {
    static std::map<std::string, std::string> a;
    std::string code;
    for (auto &inst : Block) {
        a.insert({ inst.getOpcodeName(), inst.getOpcodeName() });
    }

    for (auto &b : a) {
        llvm::outs() << b.first << "\n";
    }

    llvm::outs() << "\n\n\n\n\n\n\n\n";

    return code;
}