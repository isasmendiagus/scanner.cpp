add_test([=[StringSourceTest.ReadsSimpleStringCompletely]=]  /home/ubuntu/Projects/SCANOSS/scanner.cpp/build/string_source_test [==[--gtest_filter=StringSourceTest.ReadsSimpleStringCompletely]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[StringSourceTest.ReadsSimpleStringCompletely]=]  PROPERTIES WORKING_DIRECTORY /home/ubuntu/Projects/SCANOSS/scanner.cpp/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test([=[StringSourceTest.ReturnsEndOfContentWhenEmpty]=]  /home/ubuntu/Projects/SCANOSS/scanner.cpp/build/string_source_test [==[--gtest_filter=StringSourceTest.ReturnsEndOfContentWhenEmpty]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[StringSourceTest.ReturnsEndOfContentWhenEmpty]=]  PROPERTIES WORKING_DIRECTORY /home/ubuntu/Projects/SCANOSS/scanner.cpp/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set(  string_source_test_TESTS StringSourceTest.ReadsSimpleStringCompletely StringSourceTest.ReturnsEndOfContentWhenEmpty)
