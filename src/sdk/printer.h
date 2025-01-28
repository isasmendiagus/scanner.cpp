//
// Created by Agustin on 28/01/2025.
//

#ifndef PRINTER_H
#define PRINTER_H

#include <string>

class Printer {
public:
    void print(const std::string& message);
    std::string getMessage() const;
    void setMessage(const std::string& message);
private:
    std::string message;
};


#endif //PRINTER_H
