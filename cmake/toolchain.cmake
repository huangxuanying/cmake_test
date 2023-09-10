set(CMAKE_SYSTEM_NAME Linux)
##aarch64-linux-gnu编译环境，需要安装交叉编译工具链
# set(CMAKE_SYSTEM_PROCESSOR aarch64)
# set(MDC_SDK /usr/local/ubuntu_crossbuild_devkit)
# set(CMAKE_SYSROOT ${MDC_SDK}/sysroot)
# set(CMAKE_C_COMPILER /usr/bin/aarch64-linux-gnu-gcc)
# set(CMAKE_CXX_COMPILER /usr/bin/aarch64-linux-gnu-g++)
# set(CMAKE_FIND_ROOT_PATH ${MDC_SDK}/sysroot ${CMAKE_FIND_ROOT_PATH})

##x86_64-linux-gnu编译环境
set(CMAKE_SYSTEM_PROCESSOR x86_64)
set(CMAKE_C_COMPILER /usr/bin/gcc)
set(CMAKE_CXX_COMPILER /usr/bin/g++)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)