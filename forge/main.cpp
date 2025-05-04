#include <include/llvm/LLVM.h>
#include <include/translator/Module.h>

int main(int argc, char **argv) {
    auto context = LLVMContext::Instance();
    auto module = LLVMIRParser::Parse("../example/basic-c/main.ll", context);

    ModuleTranslator translator(module);
    auto result = translator.Translate();

    std::ofstream out("./out.ppl");
    out << result;
    out.close();

    return 0;
}
