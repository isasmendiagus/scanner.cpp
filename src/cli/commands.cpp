//
// Created by Agustin on 28/01/2025.
//

#include "commands.h"
#include "commands.h"

void CLI::execute(const std::string& command) {
    printer.setMessage(command);
    printer.print("CLI executing: " + printer.getMessage());
}