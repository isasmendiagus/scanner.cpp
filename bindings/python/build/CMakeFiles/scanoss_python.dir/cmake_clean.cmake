file(REMOVE_RECURSE
  "python/_scanoss.pdb"
  "python/_scanoss.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/scanoss_python.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
