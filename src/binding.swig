%module printer

%{
#include "./sdk/printer.h"
#include "./cli/commands.h"
%}

%include <std_string.i>

// Include both SDK and CLI headers
%include "./sdk/printer.h"
%include "./cli/commands.h"

// Add Python entry point
%pythoncode %{
def main():
    import sys
    cli = CLI()
    if len(sys.argv) > 1:
        cli.execute(sys.argv[1])
%}