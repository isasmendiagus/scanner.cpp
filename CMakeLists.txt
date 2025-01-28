cmake_minimum_required(VERSION 3.28)

project(scanner.cpp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

# Enable testing
enable_testing()

# Add GoogleTest
include(FetchContent)
FetchContent_Declare(
        googletest
        URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
)
FetchContent_MakeAvailable(googletest)

# Source files
set(SOURCE_FILES
        src/fingerprint/string_source.cpp
        src/fingerprint/file_source.cpp
)

set(HEADER_FILES
        src/fingerprint/content_source.hpp
        src/fingerprint/string_source.hpp
        src/fingerprint/file_source.hpp
)

set(MAIN_SOURCE
        src/main.cpp
)

# Create library for our sources
add_library(scanner_lib ${SOURCE_FILES} ${HEADER_FILES})
target_include_directories(scanner_lib PUBLIC src/fingerprint)

# Main executable
add_executable(new_target ${MAIN_SOURCE})
target_link_libraries(new_target PRIVATE scanner_lib)

# Tests
if(BUILD_TESTING)
    # String source tests
    add_executable(string_source_test
            src/fingerprint/string_source.test.cpp
    )
    target_link_libraries(string_source_test
            PRIVATE
            scanner_lib
            GTest::gtest_main
    )

    # File source tests
#    add_executable(file_source_test
#            src/fingerprint/file_source.test.cpp
#    )
#    target_link_libraries(file_source_test
#            PRIVATE
#            scanner_lib
#            GTest::gtest_main
#    )

    # Register tests
    include(GoogleTest)
    gtest_discover_tests(string_source_test)
#    gtest_discover_tests(file_source_test)
endif()