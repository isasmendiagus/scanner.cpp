%module scanoss

%{
#include "../../sdk/sdk.hpp"
%}

// Common type mappings that work for both Python and Node
%include <std_string.i>
%include <std_vector.i>

// Include your headers
%include "../../sdk/sdk.hpp"