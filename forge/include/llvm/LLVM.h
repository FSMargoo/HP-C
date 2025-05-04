/**
 * LLVM.h:
 *      @Descripiton    :   The LLVM wrapper for the translator
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef LLVM_H
#define LLVM_H

#include <llvm/ADT/APFloat.h>
#include <llvm/ADT/SmallString.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/IR/GetElementPtrTypeIterator.h>
#include <llvm/IR/GlobalVariable.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Operator.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>

/**
 * The LLVM context wrapper
 */
class LLVMContext {
public:
    /**
     * Creating a new LLVMContext object
     * @return The new LLVMContext instance
     */
    static llvm::LLVMContext Instance();
};

/**
 * When an IR parsing progress goes panic, this exception will
 * be thrown
 */
class LLVMIRParsePanic : public std::logic_error {
public:
    LLVMIRParsePanic(const std::string &Message) : std::logic_error(Message) {
    }
};

/**
 * The IR parser wrapper of the LLVM
 */
class LLVMIRParser {
public:
    /**
     * Parsing the IR code file, when the parsing progress has any error, it will
     * throw LLVMIRParsePanic exception
     * @param File The file path to the IR file
     * @param Context The context of the LLVM
     * @return The IR module of the IR file
     */
    static std::unique_ptr<llvm::Module> Parse(const std::string &File, llvm::LLVMContext &Context);
};

/**
 * Extracting the anonymous ID of a llvm::Value object,
 * like the anonymous register %1, %2
 */
class LLVMAnonyExtractor {
public:
    /**
     * Extracting the ID of a value, returning in a sensible ID in PPL
     * @param Value The value to be extracted
     * @return The ID of the value
     */
    static std::string Extract(const llvm::Value *Value);
};

/**
 * Legalizing the name of a variable or function to meet the gramma
 * demanded by PPL
 */
class LLVMNameLegalizer {
public:
    /**
     * Legalizing the name of a variable or function to meet the gramma
     * demanded by PPL
     * @param ID The ID to be legalizing
     * @return The legalized ID
     */
    static std::string Legalize(const std::string &ID);
};

/**
 * Performing undo operation on a string
 */
class LLVMStringReversal {
public:
    /**
      * Performing undo operation on a string
      */
    static std::string Reverse(const std::string &String);
};

#endif //LLVM_H
