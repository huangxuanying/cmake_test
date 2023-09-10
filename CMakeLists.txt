cmake_minimum_required(VERSION 3.5)

project(cmake_test)
include(${CMAKE_SOURCE_DIR}/cmake/toolchain.cmake)

#添加编写选项
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -fPIC -std=c++11 -fopenmp") 
#添加头文件路径
include_directories(${CMAKE_SOURCE_DIR}/include)
#添加库文件路径
include_directories(${CMAKE_SOURCE_DIR}/lib/lib_so/)
include_directories(${CMAKE_SOURCE_DIR}/lib/lib_a/)
#添加程序宏定义
add_definitions(-DPLATFORM_LINUX)
MESSAGE(STATUS "cmake_test is Linux platform")
#设置rpath路径
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH .)
#add lib
add_subdirectory(lib)
#添加编译源文件
file(GLOB SRC "src/*.cpp")
add_executable(${PROJECT_NAME} ${SRC})
target_link_libraries(${PROJECT_NAME} PRIVATE cmake_librara_so cmake_librara_a dl)

include(${CMAKE_SOURCE_DIR}/cmake/install.cmake)
