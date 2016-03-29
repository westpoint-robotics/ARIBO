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
