/**
 * LLVM.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/llvm/LLVM.h>

llvm::LLVMContext LLVMContext::Instance() {
    return {};
}

std::unique_ptr<llvm::Module> LLVMIRParser::Parse(const std::string &File, llvm::LLVMContext &Context) {
    llvm::SMDiagnostic error;
    auto module = llvm::parseIRFile(File, error, Context);

    if (module == nullptr) {
        throw LLVMIRParsePanic(error.getMessage().str());
    }

    return module;
}

std::string LLVMAnonyExtractor::Extract(const llvm::Value *Value) {
    static std::string buffer;
    static llvm::raw_string_ostream rso(buffer);

    Value->printAsOperand(rso, false);

    buffer = "v" + LLVMNameLegalizer::Legalize(buffer);

    return buffer;
}

std::string LLVMNameLegalizer::Legalize(const std::string &ID) {
    std::string result = ID;
    for (auto &ch: result) {
        if (ch == '?' || ch == '@' || ch == '.' || ch == '_') {
            ch = 'r';
        }
    }

    return result;
}

std::string LLVMStringReversal::Reverse(const std::string &String) {
    std::string buffer = String;
    size_t pos = 0;
    while((pos = buffer.find("\n", pos)) != std::string::npos) {
        buffer.replace(pos, 1, "\\n");
        pos += 2;
    }

    return "\"" + buffer + "\"";
}