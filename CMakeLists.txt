cmake_minimum_required(VERSION 3.20)
project(Injector)

set(CMAKE_CXX_STANDARD 14)

include_directories(include)

add_executable(Injector
        include/Header.h
        src/CheatInjector.cpp)
