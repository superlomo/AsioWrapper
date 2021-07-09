set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/AsioWrapper/cmake")

message(${CMAKE_MODULE_PATH})

find_package(AsioWrapper REQUIRED)
if (AsioWrapper_FOUND)
    include_directories(${AsioWrapper_INCLUDE_DIR})
    target_link_libraries(${AsioWrapper_LIBRARY})
else (AsioWrapper_FOUND)
    message(FATAL_ERROR "AsioWrapper not found")
endif(AsioWrapper_FOUND)

add_executable(AsioWrapperTest "AsioWrapperTest.cpp" )
