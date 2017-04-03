if(APPLE)
	cmake_minimum_required(VERSION 3.7)
endif(APPLE)

if(UNIX AND NOT APPLE)
	cmake_minimum_required(VERSION 3.5)
endif(UNIX AND NOT APPLE)

if(WIN32)
endif(WIN32)

set (CMAKE_C_COMPILER "clang")
set (CMAKE_C_FLAGS_RELEASE "-Ofast -Wno-macro-redefined")
set (CMAKE_C_FLAGS_MINSIZEREL "-Oz -Wno-macro-redefined")
set (CMAKE_C_FLAGS_DEBUG "-O0 -Wno-macro-redefined")
# uncomment the following line if you want full cubic anisotropy treatment 
#add_definitions(-D__FULL_CUBIC_ANISO__)
# uncomment the following line if you want to impose double/single precision arithmetic
#add_definitions(-D__FLT_EVAL_METHOD__=1)

project(spinswift VERSION 0.1 LANGUAGES Swift)

file (
    GLOB_RECURSE
    source_files
    src/*
)

add_executable(
    spinswift.x
    ${source_files}
)

target_link_libraries(spinswift.x m)
