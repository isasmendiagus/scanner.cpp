if(EXISTS "/home/ubuntu/Projects/SCANOSS/scanner.cpp/build/string_source_test[1]_tests.cmake")
  include("/home/ubuntu/Projects/SCANOSS/scanner.cpp/build/string_source_test[1]_tests.cmake")
else()
  add_test(string_source_test_NOT_BUILT string_source_test_NOT_BUILT)
endif()
