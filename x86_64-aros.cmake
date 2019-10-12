set(CMAKE_SYSTEM_NAME Generic)
setC(MAKE_SYSTEM_PROCESSOR x86_64)

set(CMAKE_FIND_ROOT_PATH /opt/x86_64-aros)
set(tools /opt/x86_64-aros)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(AMIGA 1)
set(AROS 1)
set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")

set(CMAKE_C_COMPILER ${tools}/bin/linux-x86_64/tools/crosstools/x86_64-aros-gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/linux-x86_64/tools/crosstools/x86_64-aros-g++)
set(CMAKE_CPP_COMPILER ${tools}/bin/linux-x86_64/tools/crosstools/x86_64-aros-cpp)

# Compiler flags
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -fomit-frame-pointer -fno-exceptions -static-libstdc++ -s")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -O3 -fomit-frame-pointer -fno-exceptions -static-libstdc++ -s")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -O3 -fomit-frame-pointer -fno-exceptions -static-libstdc++ -s")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -fomit-frame-pointer -fno-exceptions -static-libstdc++ -s -fpermissive -fno-rtti")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O3 -fomit-frame-pointer -fno-exceptions -static-libstdc++ -s -fpermissive -fno-rtti")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3 -fomit-frame-pointer -fno-exceptions -static-libstdc++ -s -fpermissive -fno-rtti")
set(BUILD_SHARED_LIBS OFF)

# Linker configuration
set(CMAKE_EXE_LINKER_FLAGS "-lpthread -static-libstdc++")
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

include_directories(/opt/x86_64-aros/bin/linux-x86_64/AROS/Extras/Developer/include /opt/x86_64-aros/bin/linux-x86_64/tools/crosstools/lib/gcc/x86_64-aros/9.1.0/include-fixed)
