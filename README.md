```
project/
├── CMakeLists.txt                 # Main CMake file
├── README.md
├── LICENSE                        # MIT License
├── sdk/
│   ├── CMakeLists.txt
│   ├── include/
│   │   └── scanoss/
│   │       ├── scan.h            # Core C API headers
│   │       ├── types.h           # Shared data structures
│   │       └── utils.h           # Utility functions
│   ├── src/
│   │   ├── scan.cpp             # Core scanning implementation
│   │   ├── types.cpp
│   │   └── utils.cpp
│   └── tests/                    # SDK unit tests
│
├── cli/
│   ├── CMakeLists.txt
│   ├── include/
│   │   └── cli/
│   │       └── commands.h        # CLI command definitions
│   ├── src/
│   │   ├── main.cpp             # CLI entry point
│   │   └── commands.cpp         # Command implementations
│   └── tests/                   # CLI unit tests
│
├── bindings/
│   ├── CMakeLists.txt
│   ├── shared/
│   │   └── scanoss.i           # Common SWIG interface file
│   ├── python/
│   │   ├── setup.py
│   │   └── scanoss/
│   │       └── __init__.py
│   ├── java/
│   │   └── com/
│   │       └── scanoss/
│   │           └── sdk/
│   ├── javascript/
│   │   ├── package.json
│   │   └── index.js
│   └── golang/
│       └── scanoss/
│
├── examples/                    # Usage examples for each language
│   ├── c/
│   ├── cpp/
│   ├── python/
│   ├── java/
│   ├── javascript/
│   └── golang/
│
└── docs/                       # Documentation
    ├── api/                    # API documentation
    ├── cli/                    # CLI usage guide
    └── bindings/              # Language bindings documentation


```