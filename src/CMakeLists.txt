cmake_minimum_required(VERSION 3.0)

project(i2c-user)

set(CMAKE_BUILD_TYPE Release)

add_compile_options(-Wall -Wextra -pedantic -Werror -Wno-unused-but-set-variable)

add_library(i2c-user SHARED i2c-user.c)
target_include_directories(i2c-user PUBLIC .)

install(TARGETS i2c-user RUNTIME DESTINATION /usr/lib)
