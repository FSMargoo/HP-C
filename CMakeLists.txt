cmake_minimum_required(VERSION 3.31)
project(PPLForge)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(thirdparty/inja)

# Adding the LLVM supporting
list(APPEND CMAKE_PREFIX_PATH "D:/llvm-project-llvmorg-19.1.5/build")

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