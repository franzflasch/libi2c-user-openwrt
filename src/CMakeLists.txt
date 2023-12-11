cmake_minimum_required(VERSION 3.0)

project(i2c-user)

set(CMAKE_BUILD_TYPE Release)

add_compile_options(-Wall -Wextra -pedantic -Werror -Wno-unused-but-set-variable)

add_library(i2c-user SHARED i2c-user.c)
target_include_directories(i2c-user PUBLIC .)
#target_link_libraries(dsmr-reader crypto)

#option(ENABLE_WATCHDOG "Enable watchdog" OFF)

# if(ENABLE_WATCHDOG)
#     message(STATUS "Watchdog is enabled")
#     add_compile_definitions(USE_WATCHDOG)
#     target_link_libraries(dsmr-reader wdog)
# else()
#     message(STATUS "Watchdog is disabled")
# endif()

install(TARGETS i2c-user RUNTIME DESTINATION /usr/lib)
