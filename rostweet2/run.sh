#!/bin/bash

clear
echo $'ROSTWEET2 EXECUTABLE\n'
echo $'*** ENSURE roscore IS RUNNING ***\n'
echo -n '*** PRESS Y TO CONTINUE IF roscore IS RUNNING ***'
read rosrunning
if [ $rosrunning == 'Y' ]; then
echo '****************************************************'
echo $'REFRESHING ROS SOURCE (assuming INDIGO INSTALL)\n'
source /opt/ros/indigo/setup.bash
env | grep "/opt/ros/indigo"
echo $'\n'
echo '****************************************************'
echo $'ADDING rostweet2 TO SOURCE\n'
cd build
source devel/setup.bash
env | grep "rostweet2"
echo $'\n'
echo '****************************************************'
echo $'STARTING rostweet2 NOW\n\n'
echo 'PLEASE ENTER TWITTER USERNAME '
read user
echo $'\n'
echo 'PLEASE ENTER TWITTER PASSWORD '
read pass
echo $'\n'
rosrun rostweet2 twitterStatus -u "$user" -p "$pass"
fi