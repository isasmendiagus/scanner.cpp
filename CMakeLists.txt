cmake_minimum_required(VERSION 3.28)
project(1_basic)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_C_STANDARD 11)

# Find packages
find_package(Boost REQUIRED COMPONENTS program_options)
find_package(CLI11 CONFIG REQUIRED)
find_package(SWIG REQUIRED)

# Include SWIG
include(${SWIG_USE_FILE})

# Find interpreters/JDK for target languages
find_package(Python3 COMPONENTS Interpreter Development)
find_package(JNI)
#find_package(Node COMPONENTS Development)

# Set SWIG flags
set(CMAKE_SWIG_FLAGS "")

# Original executable
add_executable(1_basic
        main.cpp
        winnowing.c
        winnowing.h
        src/core/fingerprint.cpp
        src/core/fingerprint.h
)

target_link_libraries(1_basic PRIVATE
        Boost::program_options
        CLI11::CLI11
)

target_include_directories(1_basic PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/wfp
)

# Python bindings
if(Python3_FOUND)
    set_property(SOURCE winnowing.i PROPERTY CPLUSPLUS OFF)
    set_property(SOURCE winnowing.i PROPERTY SWIG_MODULE_NAME winnowing)
    swig_add_library(winnowing_python
            TYPE SHARED
            LANGUAGE python
            SOURCES winnowing.i winnowing.c
    )
    target_include_directories(winnowing_python PRIVATE
            ${Python3_INCLUDE_DIRS}
            ${CMAKE_CURRENT_SOURCE_DIR}/wfp
    )
    target_link_libraries(winnowing_python PRIVATE
            ${Python3_LIBRARIES}
    )
endif()

# Java bindings
if(JNI_FOUND)
    set_property(SOURCE winnowing.i PROPERTY CPLUSPLUS OFF)
    set_property(SOURCE winnowing.i PROPERTY SWIG_MODULE_NAME winnowing)
    swig_add_library(winnowing_java
            TYPE SHARED
            LANGUAGE java
            SOURCES winnowing.i winnowing.c
    )
    target_include_directories(winnowing_java PRIVATE
            ${JNI_INCLUDE_DIRS}
            ${CMAKE_CURRENT_SOURCE_DIR}/wfp
    )
    target_link_libraries(winnowing_java PRIVATE
            ${JNI_LIBRARIES}
    )
endif()

# Node.js bindings
#if(NODE_FOUND)
#    set_property(SOURCE winnowing.i PROPERTY CPLUSPLUS OFF)
#    set_property(SOURCE winnowing.i PROPERTY SWIG_MODULE_NAME winnowing)
#    swig_add_library(winnowing_node
#            TYPE SHARED
#            LANGUAGE javascript
#            SOURCES winnowing.i winnowing.c
#    )
#    target_include_directories(winnowing_node PRIVATE
#            ${NODE_INCLUDE_DIRS}
#            ${CMAKE_CURRENT_SOURCE_DIR}/wfp
#    )
#    target_link_libraries(winnowing_node PRIVATE
#            ${NODE_LIBRARIES}
#    )
#endif()
