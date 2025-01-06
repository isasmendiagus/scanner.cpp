# SCANOSS SDK Requirements

## 1. Core Workflow System

### 1.1 Workflow Architecture
- Must support a Directed Acyclic Graph (DAG) of scanning operations
- Must allow nodes to accept multiple input types
- Must support branching and merging of data flows
- Must allow both sequential and parallel execution
- Must support data streaming between nodes

### 1.2 Node Types
Each node must:
- Declare accepted input types
- Define output types
- Handle chunked processing where appropriate
- Support cancellation
- Report progress
- Handle errors gracefully

## 2. Core Scanning Nodes

### 2.1 Content Provider Node
- Must support multiple input sources (files, folders, streams)
- Must chunk large files
- Must support filtering (file types, sizes, patterns)
- Must provide consistent interface regardless of source
```cpp
class ContentProvider {
    virtual ChunkIterator getContent() = 0;
    virtual Metadata getMetadata() = 0;
};
```

### 2.2 Fingerprint Node
- Must implement winnowing algorithm
- Must process content in chunks
- Must support configurable window and gram sizes
- Must optimize for memory usage
```cpp
class FingerprintNode {
    vector<Fingerprint> process(ContentChunk chunk);
    void configure(FingerprintConfig config);
};
```

### 2.3 API Node
- Must batch fingerprints efficiently
- Must handle rate limiting
- Must support retries
- Must support multiple protocols (REST/gRPC)
```cpp
class APINode {
    APIResult process(vector<Fingerprint> prints);
    void setBatchSize(size_t size);
};
```

### 2.4 Dependency Node
- Must accept both raw content and API results
- Must parse manifest files
- Must extract PURLs from scan results
- Must aggregate dependencies from multiple sources
```cpp
class DependencyNode {
    vector<Dependency> process(variant<Content, APIResult> input);
};
```

## 3. Data Flow Requirements

### 3.1 Primary Flow
```
Content → Fingerprints → API → Results
     └→ Dependencies ←┘
```

### 3.2 Data Types
- Must support variant types for node inputs/outputs
- Must provide type safety between node connections
- Must support serialization of intermediate results
```cpp
struct ScanData {
    variant<ContentData, FingerprintData, APIResultData, DependencyData> data;
};
```

## 4. Configuration System

### 4.1 Node Configuration
- Must support per-node configuration
- Must validate configuration at compile time where possible
- Must support runtime reconfiguration
```cpp
struct NodeConfig {
    string name;
    variant<FingerprintConfig, APIConfig, DependencyConfig> config;
};
```

### 4.2 Workflow Configuration
- Must support workflow definition via configuration
- Must validate node connections
- Must support conditional execution paths
```cpp
struct WorkflowConfig {
    vector<NodeConfig> nodes;
    vector<Connection> connections;
    ExecutionStrategy strategy;
};
```

## 5. Performance Requirements

### 5.1 Memory Management
- Must stream large files
- Must limit memory usage per node
- Must support backpressure
- Must clean up resources properly

### 5.2 Concurrency
- Must support parallel node execution
- Must handle thread safety in shared resources
- Must provide progress updates without performance impact
- Must support cancellation

## 6. Error Handling

### 6.1 Node Level
- Must handle node-specific errors
- Must support retries where appropriate
- Must preserve partial results on failure
- Must provide detailed error context

### 6.2 Workflow Level
- Must handle graph-level errors
- Must support partial workflow completion
- Must provide cleanup on failure
- Must support recovery strategies

## 7. Extension Points

### 7.1 New Node Types
- Must support adding custom nodes
- Must provide base node interface
- Must support node metadata
```cpp
class CustomNode : public ScanNode {
    vector<type_index> acceptedInputTypes() const override;
    vector<ScanData> process(const vector<ScanData>& inputs) override;
};
```

### 7.2 Custom Data Types
- Must support adding new data types
- Must provide serialization interface
- Must support type validation

## 8. Integration Requirements

### 8.1 API Integration
- Must support multiple API versions
- Must handle authentication
- Must support custom endpoints
- Must handle rate limiting

### 8.2 Plugin System
- Must support loading external plugins
- Must validate plugin compatibility
- Must handle plugin lifecycle
- Must isolate plugin failures

## 9. Example Usage

```cpp
int main() {
    WorkflowManager workflow;
    
    // Configure nodes
    workflow.addNode<FingerprintNode>(fingerprintConfig);
    workflow.addNode<APINode>(apiConfig);
    workflow.addNode<DependencyNode>(dependencyConfig);
    
    // Define workflow
    workflow.connect("input", "fingerprint");
    workflow.connect("fingerprint", "api");
    workflow.connect("api", "dependency");
    workflow.connect("input", "dependency");
    
    // Execute
    auto results = workflow.execute(content);
}