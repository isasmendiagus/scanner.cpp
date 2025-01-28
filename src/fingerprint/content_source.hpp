#ifndef CONTENT_SOURCE_HPP
#define CONTENT_SOURCE_HPP

#include <span>
#include <string>


class ContentSource {
public:

    enum class Status {
        Success,
        Error,
        EndOfContent
    };

    struct ReadResult {
        size_t bytes_read;
        Status status;
        std::string error_message;
    };

    virtual ReadResult read_chunk(std::span<char>& buffer) = 0;
    virtual std::string identifier() const = 0;
    virtual ~ContentSource() = default;
};


#endif //CONTENT_SOURCE_HPP
