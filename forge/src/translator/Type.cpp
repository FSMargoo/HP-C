/**
 * Type.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/translator/Type.h>

#include <include/TemplateManager.h>

std::string TypeAnalyzer::Analyze(llvm::Type *Type) {
	switch (Type->getTypeID()) {
	case llvm::Type::IntegerTyID:
	case llvm::Type::HalfTyID:
	case llvm::Type::FloatTyID:
	case llvm::Type::DoubleTyID:
	case llvm::Type::FP128TyID: {
		return "0";
	}

	case llvm::Type::PointerTyID: {
		// PPL Language dosen't support pointer
		return "";
	}

	case llvm::Type::ArrayTyID: {
		auto *arrayType = llvm::cast<llvm::ArrayType>(Type);

		auto size = arrayType->getNumElements();
		auto elem = Analyze(arrayType->getElementType());

		auto templateString = std::format("{{ {{% for i in range({}) %}}{{{{ element }}}}{{% if loop.index1 < num %}}, {{% endif %}}{{% endfor %}} }}", size);

		inja::json data;
		data["element"] = elem;
		data["num"] = size;

		return TemplateManager::Instance().Render(templateString, data);
	}

	case llvm::Type::FixedVectorTyID:
	case llvm::Type::ScalableVectorTyID: {
		// TODO: Support vector type
		auto *vecType = llvm::cast<llvm::VectorType>(Type);

		return "";
	}

	case llvm::Type::StructTyID: {
		auto *structType = llvm::cast<llvm::StructType>(Type);

		// Opaque has no way to be supported
		if (structType->isOpaque()) {
			throw TypeAnalyzerOpaqueStructureFault();
		}

		inja::json data;
		data["num"] = structType->getNumElements();
		for (unsigned i = 0; i < structType->getNumElements(); ++i) {
			data["elements"].push_back(Analyze(structType->getElementType(i)));
		}

		return TemplateManager::Instance().RenderFile(TemplateManager::Array, data);
	}

	case llvm::Type::FunctionTyID: {
		// TODO: Supporting function type

		auto *funcTy = llvm::cast<llvm::FunctionType>(Type);
		// Return type
		Analyze(funcTy->getReturnType());

		// Parameteres
		for (auto *paramTy : funcTy->params()) {
			Analyze(paramTy);
		}

		break;
	}

	default:
		// For unknown type, return empty string by default
		return "";
	}

	// For unknown type, return empty string by default
	return "";
}
