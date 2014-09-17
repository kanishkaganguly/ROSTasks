# Declare the version of the CMake API for forward-compatibility
cmake_minimum_required(VERSION 2.8)

# Declare the name of the CMake Project
project(helloros_tutorial)

# Find Catkin
find_package(catkin REQUIRED)
# Declare this project as a catkin package
catkin_package()

# Find and get all the information about the roscpp package
find_package(roscpp REQUIRED)

# Add the headers from roscpp
include_directories(${roscpp_INCLUDE_DIRS})
# Define an execuable target called helloros_node 
add_executable(helloros_node helloros_node.cpp)
# Link the helloros_node target against the libraries used by roscpp
target_link_libraries(helloros_node ${roscpp_LIBRARIES})