#include <iostream>
// Gstreamer 头文件
#include <gst/gst.h>
#include "version_so.h"
std::string version_so(){
    std::string version;
    //获取Gstream 版本号
    guint major, minor, micro, nano;
    gst_version (&major, &minor, &micro, &nano);
    version.clear();
    version = std::to_string(major) + std::string(".") + std::to_string(minor) + std::string(".") + \
              std::to_string(micro) + std::string(".") + std::to_string(nano);
    return version;
}
