/**
 * Context.h:
 *      @Descripiton    :   The context for a LLVM module translation
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef CONTEXT_H
#define CONTEXT_H

#include <map>
#include <string>

/**
 * The context for a module translation
 */
struct Context {
    /**
     * The reference in the global variables
     */
    std::map<std::string, std::string> GlobalRef;
    /**
     * The pointer mapping in the local scope
     */
    std::map<std::string, std::string> PointerRef;
};

#endif //CONTEXT_H
