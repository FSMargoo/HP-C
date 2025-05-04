/**
 * TemplateManager.h:
 *      @Descripiton    :   The manager of the code template
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */
#ifndef TEMPLATEMANAGER_H
#define TEMPLATEMANAGER_H

#include <inja/inja.hpp>

class TemplateManager {
public:
    static constexpr const char *Function = "../template/function.inja";
    static constexpr const char *Variable = "../template/variable.inja";
    static constexpr const char *VariablePredefine = "../template/variable_predefine.inja";
    static constexpr const char *Array = "../template/array.inja";
    static constexpr const char *Args = "../template/args.inja";
    static constexpr const char *BinaryOperation = "../template/binary_operation.inja";

public:
    /**
     * Getting the environment of the inja lib
     * @return The environment of the inja lib
     */
    inja::Environment &GetEnv();

    /**
     *
     * @param TemplateFile The template file path
     * @param Data The data to be formatted
     * @return The rendered string
     */
    std::string Render(std::string TemplateFile, inja::json &Data);

public:
    static TemplateManager &Instance() {
        static TemplateManager instance;

        return instance;
    }

private:
    inja::Environment _env;
};

#endif //TEMPLATEMANAGER_H
