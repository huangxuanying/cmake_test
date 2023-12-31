include(FindPackageHandleStandardArgs)
unset(GSTREAM_FOUND)
set(GSTREAM_VERSION gstreamer-1.0)
set(GSTREAM_INSTALL_PATH /home/hxy/myStream_new/gst-build/install)

find_path(GSTREAM_INCLUDE_DIR NAMES gst PATHS ${GSTREAM_INSTALL_PATH}/usr/local/include/${GSTREAM_VERSION} NO_DEFAULT_PATH)
find_library(GSTREAM_LIBRARY NAMES libgstreamer-1.0.so PATHS ${GSTREAM_INSTALL_PATH}/usr/local/lib/x86_64-linux-gnu NO_DEFAULT_PATH)
find_path(GLIBS_INCLUDE_DIR1 NAMES glib PATHS /usr/include/glib-2.0 NO_DEFAULT_PATH)
find_path(GLIBS_INCLUDE_DIR2 NAMES glibconfig.h PATHS /usr/lib/x86_64-linux-gnu/glib-2.0/include NO_DEFAULT_PATH)
find_library(GLIBS_LIBRARY NAMES libglib-2.0.so PATHS /usr/lib/x86_64-linux-gnu NO_DEFAULT_PATH)
find_library(GOBJECT_LIBRARY NAMES libgobject-2.0.so PATHS /usr/lib/x86_64-linux-gnu NO_DEFAULT_PATH)

find_package_handle_standard_args(GSTREAM DEFAULT_MSG GSTREAM_INCLUDE_DIR GSTREAM_LIBRARY GLIBS_INCLUDE_DIR1 GLIBS_INCLUDE_DIR2 GLIBS_LIBRARY GOBJECT_LIBRARY)

if(GSTREAM_FOUND)
    set(GSTREAM_INCLUDE_DIRS ${GSTREAM_INCLUDE_DIR})
    set(GSTREAM_LIBRARYS ${GSTREAM_LIBRARY})
    set(GLIBS_INCLUDE_DIRS1 ${GLIBS_INCLUDE_DIR1})
    set(GLIBS_INCLUDE_DIRS2 ${GLIBS_INCLUDE_DIR2})
    set(GLIBS_LIBRARYS ${GLIBS_LIBRARY})
    set(GOBJECT_LIBRARYS ${GOBJECT_LIBRARY})
endif(GSTREAM_FOUND)

# hide locals from GUI
mark_as_advanced(GSTREAM_INCLUDE_DIR GSTREAM_LIBRARY GLIBS_INCLUDE_DIR1 GLIBS_INCLUDE_DIR2 GLIBS_LIBRARY GOBJECT_LIBRARY)
