#include <algorithm>
#include <span>
#include <utility>

#include "string_source.hpp"


StringSource::StringSource(std::string data, std::string identifier) : data_(std::move(data)), identifier_(std::move(identifier)) {}
StringSource::StringSource(std::string data) : data_(std::move(data)) {}

ContentSource::ReadResult StringSource::read_chunk(std::span<char>& buffer) {
    if (pos_ >= data_.size()) {
        return ReadResult{0, Status::EndOfContent, ""};
    }

    try {
        size_t available = std::min(buffer.size(), data_.size() - pos_);
        std::copy_n(data_.data() + pos_, available, buffer.data());
        pos_ += available;

        return ReadResult{available, Status::Success, ""};
    }
    catch (const std::exception& e) {
        return ReadResult{0, Status::Error, e.what()};
    }
}


std::string StringSource::identifier() const {
    return identifier_;
}


