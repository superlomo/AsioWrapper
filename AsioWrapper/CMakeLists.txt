# CMakeList.txt : CMake project for AsioWrapper, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

set(TARGET_NAME AsioWrapper)

include_directories("${CMAKE_SOURCE_DIR}/boost_1_76_0")

# Add source to this project's executable.
file(GLOB_RECURSE SOURCE_FILES CONFIGURE_DEPENDS ${SOURCE_FILES}
    "${CMAKE_CURRENT_LIST_DIR}/*.cpp"
    "${CMAKE_CURRENT_LIST_DIR}/*.c"
    "${CMAKE_CURRENT_LIST_DIR}/*.h")

add_library(${TARGET_NAME} STATIC ${SOURCE_FILES})

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/lib)

set(INCLUDE_DIR ${CMAKE_CURRENT_LIST_DIR}/include)
set(LIBRARY_PATH ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/)

configure_file(${CMAKE_CURRENT_LIST_DIR}/AsioWrapper.cmake.in ${CMAKE_CURRENT_LIST_DIR}/cmake/FindAsioWrapper.cmake @ONLY)

# TODO: Add tests and install targets if needed.
