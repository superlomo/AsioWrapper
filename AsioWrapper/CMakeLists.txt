# CMakeList.txt : CMake project for AsioWrapper, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

set(TARGET_NAME AsioWrapper)

# Add source to this project's executable.
file(GLOB_RECURSE SOURCE_FILES CONFIGURE_DEPENDS ${SOURCE_FILES}
    "${CMAKE_CURRENT_LIST_DIR}/*.cpp"
    "${CMAKE_CURRENT_LIST_DIR}/*.c"
    "${CMAKE_CURRENT_LIST_DIR}/*.h")

add_library(${TARGET_NAME} STATIC ${SOURCE_FILES})

target_include_directories(${TARGET_NAME} PRIVATE "${CMAKE_SOURCE_DIR}/boost_1_76_0"
    "${CMAKE_CURRENT_LIST_DIR}/include")

# TODO: Add tests and install targets if needed.
