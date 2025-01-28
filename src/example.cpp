//
// Created by Agustin on 28/01/2025.
//

#include <time.h>
double My_variable = 3.0;


int my_mod(int x, int y) {
    return (x%y);
}

char *get_time()
{
    time_t ltime;
    time(&ltime);
    return ctime(&ltime);
}