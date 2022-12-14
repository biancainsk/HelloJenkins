cmake_minimum_required(VERSION 3.0.0)
project(Hello_Jenkins VERSION 0.1.0 LANGUAGES CXX)

if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)

  set(CMAKE_CXX_EXTENSIONS OFF)
  set_property(GLOBAL PROPERTY USE_FOLDERS ON)

  include(CTest)
endif()

add_subdirectory(src)
add_subdirectory(apps)