#ifndef STRING_SOURCE_HPP
#define STRING_SOURCE_HPP

#include "content_source.hpp"
#include <string>
#include <span>

class StringSource final : public ContentSource {
    std::string data_;
    std::string identifier_;
    size_t pos_ = 0;

public:
    StringSource(std::string data, std::string identifier);
    explicit StringSource(std::string data);

    ReadResult read_chunk(std::span<char>& buffer) override;
    std::string identifier() const override;
};


#endif //STRING_SOURCE_HPP
