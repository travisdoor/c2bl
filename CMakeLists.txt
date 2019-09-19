cmake_minimum_required(VERSION 3.0)
project(c2bl VERSION 0.1.0)

# Must use GNUInstallDirs to install libraries into correct
# locations on all platforms.
include(GNUInstallDirs)

set(CMAKE_CXX_STANDARD 11)
set(HAVE_64_BIT 1)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Set a default build type if none was specified
set(DEFAULT_BUILD_TYPE "Release")
set(CMAKE_C_FLAGS_DEBUG "-DC2BL_DEBUG")
set(CMAKE_CXX_FLAGS_DEBUG "-DC2BL_DEBUG")
set(USE_SANITIZERS_ADDRESS 1)
set(USE_SANITIZERS_THREAD 0)

if(NOT CMAKE_BUILD_TYPE)
    message(STATUS "Setting build type to '${DEFAULT_BUILD_TYPE}' as none was specified.")
    set(CMAKE_BUILD_TYPE ${DEFAULT_BUILD_TYPE})
endif()

# setup output directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

set(HEADER_FILES
        src/config.h
        src/array.h
        src/small_array.h
        src/common.h
        )

set(SOURCE_FILES
        src/main.cpp
        )

add_executable(c2bl ${SOURCE_FILES} ${HEADER_FILES})

set(CLANG_LIBS clang)

if (MSVC)
    # CXX 
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} /O2 /wd4996 /MDd")
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} /Od /Z7 /wd4996 /MDd")
else()
    # CXX 
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -fno-strict-aliasing -fno-exceptions -fno-rtti -O3 -DNDEBUG")
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fno-strict-aliasing -fno-exceptions -fno-rtti -g -Wall -Wextra -Wno-unused-function -Wno-unused-parameter -Wno-missing-braces -O0")

    # SANITIZERS
    if (${USE_SANITIZERS_ADDRESS}) 
	set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fno-omit-frame-pointer -fsanitize=address")
	set(CMAKE_LINKER_FLAGS_DEBUG "${CMAKE_LINKER_FLAGS_DEBUG} -fno-omit-frame-pointer -fsanitize=address")
    endif()

    if (${USE_SANITIZERS_THREAD}) 
	set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fno-omit-frame-pointer -fsanitize=thread")
	set(CMAKE_LINKER_FLAGS_DEBUG "${CMAKE_LINKER_FLAGS_DEBUG} -fno-omit-frame-pointer -fsanitize=thread")
    endif()
endif()

target_link_libraries(c2bl PUBLIC
    ${CLANG_LIBS}
)

message(STATUS "include: ${LLVM_SRC_ROOT}")
target_include_directories(c2bl PRIVATE
    src
)

# 'make install' to the correct locations (provided by GNUInstallDirs).
install(TARGETS c2bl
        RUNTIME  DESTINATION ${CMAKE_INSTALL_BINDIR})

configure_file(${CMAKE_SOURCE_DIR}/src/config.h.in ${CMAKE_SOURCE_DIR}/src/config.h)
