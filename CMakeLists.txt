﻿cmake_minimum_required(VERSION 3.31)
project(PPLForge)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(thirdparty/inja)

# Adding the LLVM supporting
list(APPEND CMAKE_PREFIX_PATH "D:/llvm-project-llvmorg-19.1.5/llvm/cmake-build-release/lib/cmake/llvm")

find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION} at ${LLVM_DIR}")

llvm_map_components_to_libnames(llvm_libs
        core
        executionengine
        native
        support
)

add_executable(PPLForge forge/main.cpp
        forge/include/llvm/LLVM.h
        forge/src/llvm/LLVM.cpp
        forge/include/translator/Module.h
        forge/src/translator/Module.cpp
        forge/include/translator/Variable.h
        forge/src/translator/Variable.cpp
        forge/include/translator/Constant.h
        forge/src/translator/Constant.cpp
        forge/include/Context.h
        forge/include/translator/Function.h
        forge/src/translator/Function.cpp
        forge/include/TemplateManager.h
        forge/src/TemplateManager.cpp
        forge/include/translator/BasicBlock.h
        forge/src/translator/BasicBlock.cpp
        forge/include/translator/instruction/BinOp.h
        forge/src/translator/instruction/BinOp.cpp
        forge/include/translator/instruction/ResultAnalyze.h
        forge/src/translator/instruction/ResultAnalyzer.cpp
        forge/include/translator/instruction/Alloca.h
        forge/src/translator/instruction/Alloca.cpp
        forge/src/translator/Type.cpp
        forge/include/translator/Type.h
        forge/include/translator/instruction/ICmp.h
        forge/src/translator/instruction/ICmp.cpp
        forge/include/translator/instruction/Br.h
        forge/src/translator/instruction/Br.cpp
        forge/include/translator/instruction/Ret.h
        forge/src/translator/instruction/Ret.cpp
        forge/include/translator/instruction/Call.h
        forge/src/translator/instruction/Call.cpp
        forge/include/translator/instruction/GetElementPtr.h
        forge/src/translator/instruction/GetElementPtr.cpp
)

target_include_directories(PPLForge SYSTEM PRIVATE
        ${LLVM_INCLUDE_DIRS}
        forge/
        thirdparty/inja/include/
)
target_compile_options(PPLForge PRIVATE
        ${LLVM_REQUIRED_CXX_FLAGS}
)
target_link_libraries(PPLForge PRIVATE
        ${llvm_libs}
        inja
)