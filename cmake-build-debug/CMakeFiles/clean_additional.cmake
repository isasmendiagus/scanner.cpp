# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/winnowing_java.dir/winnowingJAVA_wrap.c"
  "CMakeFiles/winnowing_python.dir/winnowingPYTHON_wrap.c"
  "winnowing.java"
  "winnowing.py"
  "winnowingJNI.java"
  )
endif()
