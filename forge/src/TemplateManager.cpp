﻿/**
 * TemplateManager.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/4/2025
 */

#include <include/TemplateManager.h>

inja::Environment &TemplateManager::GetEnv() {
    return _env;
}

std::string TemplateManager::RenderFile(std::string TemplateFile, inja::json &Data) {
    return _env.render_file(TemplateFile, Data);
}
std::string TemplateManager::Render(std::string String, inja::json &Data) {
	return _env.render(String, Data);
}