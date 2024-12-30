%module winnowing

%{
#include "../../../winnowing.h"
%}

// Convert arrays for different languages
%include "typemaps.i"
%include "stdint.i"

// Handle arrays for output parameters
%apply (uint32_t* INOUT) { (uint32_t* hashes) };
%apply (uint32_t* INOUT) { (uint32_t* lines) };

// Include the header file
%include "winnowing.h"


