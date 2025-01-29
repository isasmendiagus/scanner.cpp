#ifndef SDK_HPP
#define SDK_HPP

#include "scan_module.hpp"

class SDK {
public:
    // Access to submodules
    ScanModule& scan();
    //ReportModule& report();
    //FingerprintModule& fingerprint();

private:
    ScanModule scan_;
    //ReportModule report_;
    //FingerprintModule fingerprint_;
};





#endif //SDK_HPP
