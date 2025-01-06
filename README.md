# SCANOSS SDK

A high-performance, extensible scanning SDK for software composition analysis, with multi-language support and a flexible workflow system.

## Features

- **Component Analysis**: Fast and efficient scanning of source code, dependencies, and cryptographic implementations
- **Flexible Architecture**: DAG-based workflow system for customizable scanning pipelines
- **Multi-Language Support**: Native bindings for Python, Java, JavaScript, and Go
- **High Performance**: Streaming processing and parallel execution
- **Memory Efficient**: Chunked processing for handling large files and codebases
- **Extensible**: Plugin system for custom scanners and workflows

## Quick Start

### Building from Source

```bash
mkdir build && cd build
cmake ..
make
```

### Basic Usage (C++)

```cpp
#include <scanoss/scan.h>

int main() {
    // Create and configure the scanner
    scanoss::Scanner scanner = scanoss::Scanner::Builder()
        .withFingerprinting({.window_size = 64})
        .withDependencyScanning(true)
        .build();
    
    // Perform scan
    auto results = scanner.scan("path/to/source");
}
```

### CLI Usage

```bash
# Scan a directory
scanoss scan /path/to/project

# Scan with specific features
scanoss scan --dependencies --crypto /path/to/project

# Generate only fingerprints
scanoss fingerprint /path/to/file
```

## Architecture

The SDK uses a flexible workflow system where scanning operations are organized as a Directed Acyclic Graph (DAG):

```
Content → Fingerprints → API → Results
     └→ Dependencies ←┘
```

Key components:
- **Content Providers**: Handle different input sources
- **Scanner Nodes**: Process data in various ways
- **Workflow Manager**: Orchestrates the scanning process

## Project Structure

```
project/
├── sdk/          # Core SDK implementation
├── cli/          # Command-line interface
├── bindings/     # Language bindings
├── examples/     # Usage examples
└── docs/         # Documentation
```

## Language Bindings

### Python
```python
from scanoss import Scanner

scanner = Scanner()
results = scanner.scan("path/to/project")
```

### Java
```java
import com.scanoss.sdk.Scanner;

Scanner scanner = new Scanner();
ScanResults results = scanner.scan("path/to/project");
```

### JavaScript
```javascript
const { Scanner } = require('scanoss-sdk');

const scanner = new Scanner();
const results = await scanner.scan('path/to/project');
```

### Go
```go
import "github.com/scanoss/scanoss-go"

scanner := scanoss.NewScanner()
results := scanner.Scan("path/to/project")
```

## Configuration

The SDK is highly configurable through a builder pattern:

```cpp
auto scanner = Scanner::Builder()
    .withFingerprinting({
        .window_size = 64,
        .gram_size = 4
    })
    .withDependencyScanning(true)
    .withCryptoDetection(true)
    .withAPIClient(std::make_shared<RestAPIClient>())
    .build();
```

## Extending the SDK

### Custom Scanner Nodes
```cpp
class CustomScanner : public scanoss::ScanNode {
public:
    std::vector<ScanData> process(const std::vector<ScanData>& inputs) override {
        // Implementation
    }
};
```

### Custom Content Providers
```cpp
class CustomProvider : public scanoss::ContentProvider {
public:
    ContentStream getContent() override {
        // Implementation
    }
};
```

## Build Requirements

- C++17 or later
- CMake 3.14 or later
- SWIG 4.0 or later (for language bindings)
- Python 3.7+ (for Python bindings)
- JDK 11+ (for Java bindings)
- Node.js 14+ (for JavaScript bindings)
- Go 1.16+ (for Go bindings)

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests: `make test`
5. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

- Documentation: [docs/](docs/)
- Examples: [examples/](examples/)
- Issues: GitHub Issues
- Community: Discord Channel
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