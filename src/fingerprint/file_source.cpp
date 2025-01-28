#include "file_source.hpp"

#include <fstream>
#include "content_source.hpp"

// Takes both filepath and identifier
FileSource::FileSource(const std::string& filepath, std::string identifier)
    : file_(filepath, std::ios::binary)
    , identifier_(std::move(identifier)) {
    if (!file_.is_open()) {
        throw std::runtime_error("Failed to open file: " + filepath);
    }
}

// Takes just filepath, uses it as identifier
FileSource::FileSource(const std::string& filepath)
    : FileSource(filepath, filepath) {}

ContentSource::ReadResult FileSource::read_chunk(std::span<char>& buffer)  {
    if (!file_.good()) {
        if (file_.eof()) {
            return {0, Status::EndOfContent, ""};
        }
        return {0, Status::Error, "File read error"};
    }

    try {
        file_.read(buffer.data(), buffer.size());
        size_t bytes_read = file_.gcount();

        return {bytes_read, Status::Success, ""};
    }
    catch (const std::exception& e) {
        return {0, Status::Error, e.what()};
    }
}

std::string FileSource::identifier() const  {
    return identifier_;
}

FileSource::~FileSource() {
    if (file_.is_open()) {
        file_.close();
    }
}
