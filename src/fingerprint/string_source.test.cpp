
#include <gtest/gtest.h>
#include "string_source.hpp"

class StringSourceTest : public ::testing::Test {
protected:
    void SetUp() override {}  // Not needed for now but good practice to have
};

TEST_F(StringSourceTest, ReadsSimpleStringCompletely) {
    // Arrange
    const std::string test_data = "Hello, World!";
    StringSource source(test_data);
    std::vector<char> buffer(20);  // Buffer bigger than data
    auto span = std::span(buffer);

    // Act
    auto result = source.read_chunk(span);

    // Assert
    EXPECT_EQ(result.status, ContentSource::Status::Success);
    EXPECT_EQ(result.bytes_read, test_data.length());
    EXPECT_EQ(result.error_message, "");
    EXPECT_EQ(std::string(buffer.data(), result.bytes_read), test_data);
}

TEST_F(StringSourceTest, ReturnsEndOfContentWhenEmpty) {
    // Arrange
    StringSource source("");
    std::vector<char> buffer(10);
    auto span = std::span(buffer);

    // Act
    auto result = source.read_chunk(span);

    // Assert
    EXPECT_EQ(result.status, ContentSource::Status::EndOfContent);
    EXPECT_EQ(result.bytes_read, 0);
    EXPECT_EQ(result.error_message, "");
}