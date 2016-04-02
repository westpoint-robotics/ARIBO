# ARIBO

Instructions for the ARIBO capstone project.  The setup and configuration of ARIBO follows very closely to the Turtlebot.

## Basics

Install two fully charged BB-2590s. Press the power button to turn on the GVR-Bot. Read the GVR-Bot user manual for troubleshooting procedures. Flashing LEDs typically indiciate a fault. Run the GDT debug utility for system status and troubleshooting.    

## ROS Environment

Firstly ssh into your ARIBO computer from your workstation computer. The setup.bash should already be sourced (check your .bashrc). If you are not able ssh, connect a monitor, keyboard, and mouse and check your configuration.

`ssh user1@192.168.200.50`

Password is: RosUser1!

At this point it is very important to make sure you have set any and all environment variables correctly. This includes those for ROS Networking and non-default hardware configurations - a typical setup will include the mobility base, computer, pan-tilt unit, imu, lidar, and camera system.

## Bringup Instructions

In the sourced ROS Environment.

`roslaunch aribo_bringup minimal.launch --screen`

Once the system is running, subsequent commands should be done from the workstation computer.

## 3D Visualization

On the workstation computer, start rviz already configured to visualize the robot and its sensor's output:

`roslaunch aribo_rviz_launchers view_robot.launch`

## Teleoperation

### Joystick Teleop

#### Goal
Use a joystick to teleoperate the robot. Note that several joystick configurations can be supported - depending on your joystick you may just need to remap the keys.
#### Setting up the Joystick
For the most part, this tutorial assumes you have already got your joystick plugged in and its ready to go. Some more detailed information for specific joysticks: 
#### Execute
`roslaunch aribo_teleop drive_joy.launch`

## Navigation

### SLAM Map Building

Goal

This tutorial shows how to build a map to let the robot remember the environnment around. With generated map, robot can autonomously navigate around.

Execute

Make sure the minimal software has already been launched on the robot and you have configured your network correctly. The default navigation parameters provided on turtlebot_navigation should be apropriate in most cases, but if not, take a look at the setup navigation tutorial.

Roslaunch

1. On the TurtleBot, start gmapping_demo on the turtlebot laptop.

# From turtlebot laptop.
 > roslaunch turtlebot_navigation gmapping_demo.launch

2. On the PC

Start rviz already configured to visualize the robot and its sensor's output:

 > roslaunch turtlebot_rviz_launchers view_navigation.launch

If you are facing a trouble, please check your setups. TurtleBot Bringup, PC Bringup, and Network Configuration

3. Drive the robot around by either and save map:

    Using telop (keyboard, joystick, or other) from Teleoperation Tutorials

    If you are having troubles making a map check out this question. 

