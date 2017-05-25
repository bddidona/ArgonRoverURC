#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "rover_manual/joystick.h"
#include "rover_manual/wheel_speeds.h"

#include <sstream>
#include <string>

bool startButtonDown = false;
bool autoMode = false;
ros::Publisher wheelSpeedPub;

void joystickCallback(const rover_manual::joystick::ConstPtr& joy){	
	/* This fires every time a button is pressed/released
	and when an axis changes (even if it doesn't leave the
	deadzone). */

	/* We track the button state to ensure you can't 
	accidentally hold down Start and press another 
	button to toggle the mode */

        /* Argon will not implement autonomy in this first test */

	if(joy->Start){ //The Start button has been pressed
		startButtonDown = true;
	}
	if(startButtonDown && !joy->Start){ //The Start button has been released
		startButtonDown = false;
		autoMode = !autoMode;
		ROS_INFO("Drive Mode Control: Switching to %s mode.", autoMode ? "AUTO" : "MANUAL");
	}
}

void manualCallback(const geometry_msgs::Twist::ConstPtr& msg){
	if(!autoMode){
		float leftWheelSpeed = 0.0, rightWheelSpeed = 0.0;
		float speedMultiplier = 127.0; 

		leftWheelSpeed = (msg->linear.x - msg->angular.z) * speedMultiplier;
		rightWheelSpeed = (msg->linear.x + msg->angular.z) * speedMultiplier;

		rover_manual::wheel_speeds msg;
		msg.left = leftWheelSpeed;
		msg.right =  rightWheelSpeed;
		wheelSpeedPub.publish(msg);

                /*Now that the left/right side speeds are published, we need them to be subscribed by the motor controller*/
	}
}

int main(int argc, char **argv){
	ros::init(argc, argv, "drive_mode_control");

	ros::NodeHandle n;

	wheelSpeedPub = n.advertise<rover_manual::wheel_speeds>("wheelSpeeds", 5);

	ros::Subscriber joystickSub = n.subscribe("joystick", 5, joystickCallback);
	ros::Subscriber manualSub = n.subscribe("manualControl", 5, manualCallback);
	//ros::Subscriber autoSub = n.subscribe("autoControl", 5, autoCallback);

	ros::spin();
	
	return 0;
}
