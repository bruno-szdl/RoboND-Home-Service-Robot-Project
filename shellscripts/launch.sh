#!/bin/sh
xterm -e "gazebo" &
sleep 5
xterm -e "source /opt/ros/kinetic/setup.bsh; roscore" &
sleep 5
xterm -e "rosrun rviz rviz"
