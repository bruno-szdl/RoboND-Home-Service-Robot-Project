#!/bin/sh
xterm -e "cd /home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws; source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws/src/my_robot/worlds/myworld.world" &
sleep 5
xterm -e "cd /home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws; source devel/setup.bash; roslaunch turtlebot_gazebo gmapping_demo.launch world_file:=/home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws/src/my_robot/worlds/myworld.world" &
sleep 5	
xterm -e "cd /home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch " & 
sleep 5
xterm -e "cd /home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws; source devel/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch "




