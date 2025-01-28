#ifndef FILE_SOURCE_HPP
#define FILE_SOURCE_HPP

#include <fstream>
#include <string>

#include "content_source.hpp"

class FileSource final : public ContentSource {
    std::ifstream file_;
    std::string identifier_;

public:
    FileSource(const std::string& filepath, std::string identifier);
    explicit FileSource(const std::string& filepath);

    ReadResult read_chunk(std::span<char>& buffer) override;
    std::string identifier() const override;
    ~FileSource() override;
};



#endif //FILE_SOURCE_HPP
