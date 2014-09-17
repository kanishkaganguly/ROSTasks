#include <ros/ros.h>

int main(int argc, char** argv){
	ros::init(argc, argv, "HELLO_ROS_NODE");
	ros::start();
	ROS_INFO_STREAM("HELLO, ROS");
	ros::spin();
	ros::shutdown();
	return 0;
}