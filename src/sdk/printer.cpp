//
// Created by Agustin on 28/01/2025.
//
#include "printer.h"
#include <iostream>

void Printer::print(const std::string& msg) {
    std::cout << "SDK: " << msg << std::endl;
}

std::string Printer::getMessage() const {
    return message;
}

void Printer::setMessage(const std::string& msg) {
    message = msg;
}