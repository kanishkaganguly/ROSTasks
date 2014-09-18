SETUP rosserial
	sudo apt-get install ros-indigo-rosserial-arduino
	sudo apt-get install ros-indigo-rosserial

RUNNING ArduinoROS_Publisher
	START roscore
	RUN rosrun rosserial_python serial_node.py _port:=/dev/ttyXXXX
	RUN rostopic echo chatter

RUNNING ArduinoROS_Subscriber
	START roscore
	RUN rosrun rosserial_python serial_node.py _port:=/dev/ttyXXXX
	RUN rostopic pub toggle_led std_msgs/Empty --once