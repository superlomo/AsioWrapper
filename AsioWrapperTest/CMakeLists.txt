set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/AsioWrapper/cmake")

set(TARGET_NAME AsioWrapperTest)

add_executable(${TARGET_NAME} "AsioWrapperTest.cpp")

target_include_directories(${TARGET_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/AsioWrapper/include)
target_link_libraries(${TARGET_NAME} AsioWrapper)
