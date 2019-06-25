set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR ppc)

#set(CMAKE_SYSROOT /opt/ppc-morphos)
set(CMAKE_FIND_ROOT_PATH /opt/ppc-morphos)
set(tools /opt/ppc-morphos)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(AMIGA 1)
set(MORPHOS 1)
set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")

set(CMAKE_C_COMPILER ${tools}/bin/ppc-morphos-gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/ppc-morphos-g++)
set(CMAKE_CPP_COMPILER ${tools}/bin/ppc-morphos-cpp)


# Compiler flags
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -fomit-frame-pointer -fno-exceptions -s -noixemul")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -O3 -fomit-frame-pointer -fno-exceptions -s -noixemul")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -O3 -fomit-frame-pointer -fno-exceptions -s -noixemul")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -fomit-frame-pointer -fno-exceptions -fpermissive -fno-rtti -s -noixemul")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O3 -fomit-frame-pointer -fno-exceptions -fpermissive -fno-rtti -s -noixemul")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3 -fomit-frame-pointer -fno-exceptions -fpermissive -fno-rtti -s -noixemul")
set(BUILD_SHARED_LIBS OFF)

# Linker configuration
set(CMAKE_EXE_LINKER_FLAGS "-noixemul -ldebug")
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")
