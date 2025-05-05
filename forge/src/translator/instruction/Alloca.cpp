/**
 * Alloca.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/instruction/Alloca.h>
#include <include/translator/instruction/ResultAnalyze.h>
#include <include/translator/Type.h>

#include <include/translator/Variable.h>

#include <include/TemplateManager.h>

std::string AllocaTranslator::Translate(llvm::AllocaInst *Inst, Context &Contxt) {
	auto resultVariable = ResultVariableAnalyzer::AnalyzeName(Inst, Contxt);
	auto allocaType = Inst->getAllocatedType();

	auto initializer = TypeAnalyzer::Analyze(allocaType);

	inja::json data;
	data["left"] = resultVariable;
	data["right"] = initializer;

	return TemplateManager::Instance().RenderFile(TemplateManager::Assignment, data);
}