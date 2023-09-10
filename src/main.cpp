#include <iostream>
#include "version_so.h"
#include "version_a.h"
int main(int, char**){
    std::cout << "Hello, from main!\n";
    //获取Gstream 版本号
    std::string str_version_so = version_so();
    std::cout << "Gstreamer Version: " << str_version_so<< std::endl;
    //获取Gstream 版本号
    std::string str_version_a = version_a();
    std::cout << "Gstreamer Version: " << str_version_a<< std::endl;
}
