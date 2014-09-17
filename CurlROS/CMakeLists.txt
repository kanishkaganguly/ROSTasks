# Declare the version of the CMake API for forward-compatibility
cmake_minimum_required(VERSION 2.8)

# Declare the name of the CMake Project
project(curlros)

# Find Catkin
find_package(catkin REQUIRED)
# Declare this project as a catkin package
catkin_package()

# Find and get all the information about the roscpp package
find_package(roscpp REQUIRED)
find_package(CURL REQUIRED)

# Add the headers from roscpp
include_directories(${roscpp_INCLUDE_DIRS})
include_directories(${curl_INCLUDE_DIRS})
# Define an execuable target called curlROS 
add_executable(curlROS curlROS.cpp)
# Link the curlROS target against the libraries used by roscpp
target_link_libraries(curlROS ${CURL_LIBRARIES} ${roscpp_LIBRARIES})