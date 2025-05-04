/**
 * Type.h:
 *      @Descripiton    :   The type analyzer for the llvm::Type class
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef TYPE_H
#define TYPE_H

#include <include/llvm/LLVM.h>

class TypeAnalyzerOpaqueStructureFault : public std::logic_error {
public:
	TypeAnalyzerOpaqueStructureFault() : std::logic_error("Opaque structure is not supported!") {

	}
};

/**
 * The type analyzer for the llvm::Type class
 */
class TypeAnalyzer {
public:
	/**
	 * Analyzing the type object
	 * @param Type The type pointer to be analyzed
	 * @return The analyzed string, which contains the initializer for a PPL variable
	 */
	static std::string Analyze(llvm::Type *Type);
};

#endif //TYPE_H
