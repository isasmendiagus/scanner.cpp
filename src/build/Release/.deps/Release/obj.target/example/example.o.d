cmd_Release/obj.target/example/example.o := c++ -o Release/obj.target/example/example.o ../example.cpp '-DNODE_GYP_MODULE_NAME=example' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_DARWIN_USE_64_BIT_INODE=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DOPENSSL_NO_PINSHARED' '-DOPENSSL_THREADS' '-DBUILDING_NODE_EXTENSION' -I/Users/agus/Library/Caches/node-gyp/18.20.4/include/node -I/Users/agus/Library/Caches/node-gyp/18.20.4/src -I/Users/agus/Library/Caches/node-gyp/18.20.4/deps/openssl/config -I/Users/agus/Library/Caches/node-gyp/18.20.4/deps/openssl/openssl/include -I/Users/agus/Library/Caches/node-gyp/18.20.4/deps/uv/include -I/Users/agus/Library/Caches/node-gyp/18.20.4/deps/zlib -I/Users/agus/Library/Caches/node-gyp/18.20.4/deps/v8/include -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1 -I/Library/Developer/CommandLineTools/usr/lib/clang/14.0.3/include -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include  -O3 -gdwarf-2 -mmacosx-version-min=10.15 -arch arm64 -Wall -Wendif-labels -W -Wno-unused-parameter -std=gnu++17 -stdlib=libc++ -fno-rtti -fno-exceptions -fno-strict-aliasing -MMD -MF ./Release/.deps/Release/obj.target/example/example.o.d.raw   -c
Release/obj.target/example/example.o: ../example.cpp
../example.cpp:
