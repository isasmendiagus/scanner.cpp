//
// Created by Agustin on 28/01/2025.
//

#ifndef COMMANDS_H
#define COMMANDS_H

#include "../sdk/printer.h"
#include <string>

class CLI {
public:
    void execute(const std::string& command);
private:
    Printer printer;
};


#endif //COMMANDS_H
