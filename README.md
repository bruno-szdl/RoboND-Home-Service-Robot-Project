# RoboND-Home-Service-Robot-Project
Fifth project of the Robotics Course of Udacity

![](gif/home-service-gif.gif)

## Prerequisites 
* make >= 4.1
* gcc/g++ >= 5.4
* Gazebo 7.0  
* ROS Kinetic 

## Edit the .bashrc file
Insert the line `source /opt/ros/kinetic/setup.bash` in .bashrc  
Restart the terminal

## Clone the repository and submodules in your workspace
`$ git clone --recurse-submodules https://github.com/bruno-szdl/RoboND-Home-Service-Robot-Project`

## Edit the shellscripts
In the .sh files in `/RoboND-Home-Service-Robot-Project/shellscripts`, change `/home/workspace/` to the directory path where your the repository was cloned

## Build the project
`$ cd /<repository_path>/catkin_ws`  
`$ catkin_make`

## Run the shellscripts
`$ cd /<repository_path>/shellscripts`

  ### test_slam.sh
  `$ chmod +x test_slam.sh`  
  `$ ./test_slam.sh`  
  Move the robot around using the keyboard to map the world
  to save the map run the command  
  `$ rosrun map_server map_saver`    
  A .pgm file will be created. This is an image file and can be edited with an image editor software such as gimp
  Move the .pgm and .yaml files to `/<repository_path/catkin_ws/src/my_robot/maps`
  
  ### test_navigation.sh
  `$ chmod +x test_navigation.sh`  
  `$ ./test_navigation.sh`  
  In Rviz use the 2D Navigation Goal to navigate the robot to any place in the world
  
  ### pick_objects.sh
  `$ chmod +x pick_objects.sh`  
  `$ ./pick_objects.sh`  
  Watch the robot moving to the initial goal position and then to the final goal position
  
  ### add_marker.sh
  `$ chmod +x add_marker.sh`  
  `$ ./add_marker.sh`  
  In Rviz add Marker  
  Watch the marker at the initial goal position, then disappearing and appearing at the final goal position
  
  ### home_service.sh
  `$ chmod +x home_service.sh`  
  `$ ./home_service.sh`  
  In Rviz add Marker  
  Watch the robot moving to the initial position, picking the object and delivering it at the goal position
