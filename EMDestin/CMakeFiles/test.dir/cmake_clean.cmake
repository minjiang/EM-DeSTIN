FILE(REMOVE_RECURSE
  "CMakeFiles/test.dir/test/test.cpp.o"
  "test/test.pdb"
  "test/test"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/test.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
