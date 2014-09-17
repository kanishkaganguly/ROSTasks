#include <stdio.h>
#include <curl/curl.h>
#include <ros/ros.h>
#include <string.h>

using namespace std;

int main(int argc, char** argv){
    //Initialize cURL variables
  CURL *curl;
  CURLcode res;

    //INIT ROS
  ros::init(argc, argv, "curlROS_node");
  ros::start();

    //INIT cURL
  curl_global_init(CURL_GLOBAL_ALL);
  curl = curl_easy_init();
  ROS_INFO_STREAM("Starting cURL");

  if(curl) {
    curl_easy_setopt(curl, CURLOPT_URL, "http://192.168.0.103/?data=FAN");
      //curl_easy_setopt(curl, CURLOPT_URL, "http://192.168.0.103/?data=LIGHT");
    res = curl_easy_perform(curl);
    curl_easy_cleanup(curl);
  }
  curl_global_cleanup();
  ros::spin();
  ros::shutdown();
  return 0;
}
