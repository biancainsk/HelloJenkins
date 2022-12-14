set(HEADER_LIST "${PROJECT_SOURCE_DIR}/include/modern/helloJenkins.h")
add_library(Hello_Jenkins helloJenkins.cpp ${SOURCES_H})
target_include_directories(Hello_Jenkins PUBLIC ../include)
target_compile_features(Hello_Jenkins PUBLIC cxx_std_17)