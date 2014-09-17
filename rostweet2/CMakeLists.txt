# Declare the version of the CMake API for forward-compatibility
cmake_minimum_required(VERSION 2.8)

# Declare the name of the CMake Project
project(rostweet2)

# Find Catkin
find_package(catkin REQUIRED)
# Declare this project as a catkin package
catkin_package()

# Find and get all the information about the roscpp package
find_package(roscpp REQUIRED)

# Add the headers from roscpp
include_directories(${roscpp_INCLUDE_DIRS})
include_directories(${ROOT_SOURCE_DIR}/include)
include_directories(${ROOT_SOURCE_DIR}/lib)
include_directories(${ROOT_SOURCE_DIR}/libtwitcurl)

# Define an execuable target called twitter_node 
add_executable(twitter_node twitter_node.cpp)

# Link the twitter_node target against the libraries used by roscpp
target_link_libraries(twitter_node /usr/lib/libtwitcurl.so ${roscpp_LIBRARIES})