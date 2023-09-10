cmake_minimum_required(VERSION 3.5)
set(MODULE_NAME "cmake_librara_so")
include(${CMAKE_SOURCE_DIR}/cmake/toolchain.cmake)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall -O3 -Wno-unused-variable -pthread")

#1.将该目录下的文件夹目录设置到头文件路径中，并添加编译文件
#调用函数，把子目录分别保存在变量中,filters可用于过滤包含指定字符串的文件夹
list(APPEND filters "")
#调用函数，把src子目录保存在SRC_DIRS变量中
list_sub_dir(SRC_DIRS ${CMAKE_CURRENT_SOURCE_DIR} "${filters}")
#用户可在此添加头文件路径
list_sub_dir(CUR_INC_DIRS ${CMAKE_CURRENT_SOURCE_DIR} "${filters}")
#添加src编译文件夹
aux_source_directory(./src COMMON_SOURCE)

#2.查找添加依赖库和头文件
#添加cmake module路径
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/modules/")
find_package(GSTREAM REQUIRED)
message("GSTREAM_LIBRARYS ${GSTREAM_LIBRARYS}")
message("GLIBS_LIBRARYS ${GLIBS_LIBRARYS}")
message("GOBJECT_LIBRARYS ${GOBJECT_LIBRARYS}")
#添加include及lib文件路径
include_directories(
    ${CUR_INC_DIRS}
    ${GSTREAM_INCLUDE_DIRS}
    ${GLIBS_INCLUDE_DIRS1}
    ${GLIBS_INCLUDE_DIRS2}
    ${CMAKE_SOURCE_DIR}/include
)
ADD_LIBRARY(${MODULE_NAME} SHARED ${COMMON_SOURCE})
target_link_libraries(${MODULE_NAME} PRIVATE ${GSTREAM_LIBRARYS} ${GLIBS_LIBRARYS} ${GOBJECT_LIBRARYS} dl)