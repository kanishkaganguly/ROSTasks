#include <stdio.h>
#include <curl/curl.h>
#include <ros/ros.h>

int main(int argc, char** argv){
  CURL *curl;
  CURLcode res;
  
  ros::init(argc, argv, "curlROS_node");
  ros::start();
  curl_global_init(CURL_GLOBAL_ALL);
  curl = curl_easy_init();
  ROS_INFO_STREAM("Starting cURL");
  if(curl) {
   CURL *curl;
   CURLcode res;
   curl = curl_easy_init();
   if(curl) {
    curl_easy_setopt(curl, CURLOPT_URL, "http://192.168.0.103/?data=FAN");
    res = curl_easy_perform(curl);
    curl_easy_cleanup(curl);
  }
  curl_global_cleanup();
  ros::spin();
  ros::shutdown();
  return 0;
}
}