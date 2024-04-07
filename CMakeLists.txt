cmake_minimum_required (VERSION 3.5)

project (lpstyl)

option(BUILD_ATALK "Build AppleTalk support" OFF)

if (BUILD_ATALK)
    find_library(LIB_ATALK atalk)
    add_definitions(-DATALK=1)
    set(ATALK_SRC adsp.c)
endif()   

add_executable(lpstyl lpstyl.c ${ATALK_SRC})

target_link_libraries(lpstyl PRIVATE "${LIB_ATALK}")

target_include_directories(lpstyl SYSTEM PRIVATE "${CMAKE_PREFIX_PATH}/include")