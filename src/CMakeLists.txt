cmake_minimum_required(VERSION 3.15)

project(gpio_sim_example)

add_executable(gpio_sim_example main.cpp)
target_link_libraries(gpio_sim_example PUBLIC /usr/lib/x86_64-linux-gnu/libgpiodcxx.so)
