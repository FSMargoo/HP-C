/**
 * BasicBlock.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include "include/translator/instruction/Ret.h"

#include <include/translator/BasicBlock.h>

#include <include/translator/instruction/BinOp.h>
#include <include/translator/instruction/ICmp.h>
#include <include/translator/instruction/Br.h>
#include <include/translator/instruction/Alloca.h>
#include <include/translator/instruction/Call.h>
#include <include/translator/instruction/Ret.h>

#include <llvm-c/Core.h>

std::string BasicBlockTranslator::Translate(llvm::BasicBlock &Block, Context &Contxt) {
    std::string code;
	bool first = true;
    for (auto &inst : Block) {
        if (auto binOp = llvm::dyn_cast<llvm::BinaryOperator>(&inst)) {
            code += BinOpTranslator::Translate(binOp, Contxt) + "\n";
        }
        if (auto alloca = llvm::dyn_cast<llvm::AllocaInst>(&inst)) {
        	code += AllocaTranslator::Translate(alloca, Contxt) + "\n";
        }
    	if (auto icmp = llvm::dyn_cast<llvm::ICmpInst>(&inst)) {
    		code += ICmpTranslator::Translate(icmp, Contxt) + "\n";
    	}
    	if (auto br = llvm::dyn_cast<llvm::BranchInst>(&inst)) {
    		code += BrTranslator::Translate(br, Contxt, !first) + "\n";
    	}
    	if (auto ret = llvm::dyn_cast<llvm::ReturnInst>(&inst)) {
    		code += RetTranslator::Translate(ret, Contxt) + "\n";
    	}
    	if (auto ret = llvm::dyn_cast<llvm::CallInst>(&inst)) {
    		code += CallTranslator::Translate(ret, Contxt) + "\n";
    	}

    	first = false;
    }

    return code;
}