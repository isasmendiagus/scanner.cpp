## Python
```bash
swig  -python example.i 

gcc -c example.c example_wrap.c \                                                                             
       -I/Users/agus/.pyenv/versions/3.8.18/include/python3.8 -fPIC

gcc -bundle -flat_namespace -undefined suppress example.o example_wrap.o $(python3.8-config --ldflags) -o _example.so

```
***NOTE***: 'ld' doesn't exist on mac , so we use  gcc -bundle

## Javascript

1. Install node-gyp
2. Create binding.gyp file

```
{
  "targets": [{
  "include_dirs": [
        "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1",
        "/Library/Developer/CommandLineTools/usr/lib/clang/14.0.3/include",
        "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
      ],
    "target_name": "example",
    "sources": [
      "example.cpp",
      "example_wrap.cxx"
    ]
  }]
}
```

3. Run the following commands

```bash
swig  -javascript -c++ -node example.i

node-gyp configure # First time running node-gyp

node-gyp build

```


### Build & Test

```bash
cmake -B build -DBUILD_TESTING=ON && cd build && make && ctest
```

***NOTE***: Improve building system using CMakePresets