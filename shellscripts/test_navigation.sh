#!/bin/sh
xterm -e "cd /home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws; source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws/src/my_robot/worlds/myworld.world" &
sleep 10
xterm -e "cd /home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws; source devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws/src/my_robot/maps/map.yaml" &
sleep 10
xterm -e "cd /home/workspace/RoboND-Home-Service-Robot-Project/catkin_ws; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5
