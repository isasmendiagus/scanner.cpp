#include <iostream>
#include <CLI/CLI.hpp>
#include <filesystem>
#include "winnowing.h"

using namespace std;

#define MAX_HASHES 1000


// TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.

int main(int argc, char* argv[]) {
    CLI::App app{"Modern CLI App"};

    std::string filename;
    int threads = 1;
    bool verbose = false;

    app.add_option("--file,-f", filename, "Input file")
       //->required()
    ;
    app.add_option("-j,--threads", threads, "Number of threads")
       ->check(CLI::Range(1, 10));
    app.add_flag("-v,--verbose", verbose);

    CLI11_PARSE(app, argc, argv);

    //cout << app.get_option("file") << endl;

    // Example source code to analyze
    const char *source_code = "int main() {\n"
                       "    printf(\"Hello, World!\"); console.log("""") this is a long line trying to make some fingerprints;\n"
                       "    printf(\"Hello, World!\"); console.log("""") this is a long line trying to make some fingerprints;\n"
                       "    printf(\"Hello, World!\"); console.log("""") this is a long line trying to make some fingerprints;\n"
                       "    printf(\"Hello, World!\"); console.log("""") this is a long line trying to make some fingerprints;\n"
                       "    printf(\"Hello, World!\"); console.log("""") this is a long line trying to make some fingerprints;\n"
                       "    return 0;\n"
                       "}";

    // Allocate arrays for hashes and their line numbers
    uint32_t *hashes = (uint32_t *)malloc(MAX_HASHES * sizeof(uint32_t));
    uint32_t *lines = (uint32_t *)malloc(MAX_HASHES * sizeof(uint32_t));

    if (!hashes || !lines) {
        fprintf(stderr, "Failed to allocate hash arrays\n");
        free(hashes);
        free(lines);
        return 1;
    }

    // Call winnowing function
    uint32_t num_hashes = winnowing(source_code, hashes, lines, MAX_HASHES);

    // Print results
    printf("Generated %u hashes:\n", num_hashes);
    for (uint32_t i = 0; i < num_hashes; i++) {
        printf("Line %u: Hash 0x%08x\n", lines[i], hashes[i]);
    }

    // Cleanup
    free(hashes);
    free(lines);

    return 0;
}