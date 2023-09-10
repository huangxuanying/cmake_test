# Env
set(BUILD_DIR ${CMAKE_SOURCE_DIR}/build/)
set(OUTPUT_DIR ${CMAKE_SOURCE_DIR}/out/)
#文件拷贝
install(PROGRAMS ${BUILD_DIR}/lib/lib_so/libcmake_librara_so.so DESTINATION ${OUTPUT_DIR})
install(PROGRAMS ${BUILD_DIR}/cmake_test DESTINATION ${OUTPUT_DIR})
#文件夹拷贝
#install(DIRECTORY ${EXTERANL_SWEEPER_DIR}/libs DESTINATION ${OUTPUT_SWEEPER_DIR})

