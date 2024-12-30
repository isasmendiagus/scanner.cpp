//
// Created by ubuntu on 12/22/24.
//

#ifndef WINNOWING_H
#define WINNOWING_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif


    uint32_t winnowing(const char* src, uint32_t* hashes, uint32_t* lines, uint32_t limit);

#ifdef __cplusplus
}
#endif

#endif // WINNOWING_H

