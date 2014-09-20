#define USE_USBCON
#include <ros.h>
#include <std_msgs/String.h>

ros::NodeHandle nh;

std_msgs::String pushed_msg;
ros::Publisher pub_button("pushed", &pushed_msg);

const int up_pin = 7;
const int down_pin = 8;
const int led_pin = 13;

bool up_last_reading;
long up_last_debounce_time=0;
long up_debounce_delay=50;
bool up_published = true;

bool down_last_reading;
long down_last_debounce_time=0;
long down_debounce_delay=50;
bool down_published = true;

void setup()
{
  nh.initNode();
  nh.advertise(pub_button);

  //initialize an LED output pin 
  //and a input pin for our push button
  pinMode(led_pin, OUTPUT);
  pinMode(up_pin, INPUT);
  pinMode(down_pin, INPUT);

  //Enable the pullup resistor on the button
  digitalWrite(up_pin, HIGH);
  digitalWrite(down_pin, HIGH);

  //The button is a normally button
  up_last_reading = ! digitalRead(up_pin);
  down_last_reading = ! digitalRead(down_pin);

}

void loop()
{

  bool up_reading = ! digitalRead(up_pin);
  bool down_reading = ! digitalRead(down_pin);

  if (up_last_reading!= up_reading){
    up_last_debounce_time = millis();
    up_published = false;
  }
  if (down_last_reading!= down_reading){
    down_last_debounce_time = millis();
    down_published = false;
  }

  //if the button value has not changed during the debounce delay
  // we know it is stable
  if ( !up_published && (millis() - up_last_debounce_time)  > up_debounce_delay) {
    digitalWrite(led_pin, up_reading);
    if(up_reading){
      pushed_msg.data = "UP PRESSED";
    }
    else if(!up_reading){
      pushed_msg.data = "UP NOT PRESSED";
    }
    pub_button.publish(&pushed_msg);
    up_published = true;
  }

  if ( !down_published && (millis() - down_last_debounce_time)  > down_debounce_delay) {
    digitalWrite(led_pin, down_reading);
    if(down_reading){
      pushed_msg.data = "DOWN PRESSED";
    }
    else if(!down_reading){
      pushed_msg.data = "DOWN NOT PRESSED";
    }
    pub_button.publish(&pushed_msg);
    down_published = true;
  }

  up_last_reading = up_reading;
  down_last_reading = down_reading;

  nh.spinOnce();
}









