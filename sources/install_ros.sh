#!/usr/bin/env bash
cd ~
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update && sudo apt install -y ros-melodic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt update && sudo apt install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
# Install ROS controller
sudo apt install -y ros-melodic-gazebo*
sudo apt install -y ros-melodic-ros-control ros-melodic-ros-controllers
sudo apt install -y ros-melodic-trac-ik
# Install ROS industrial
sudo apt install -y ros-melodic-industrial-core
sudo apt install -y ros-melodic-abb
sudo apt install -y ros-melodic-universal-robot
sudo apt install -y ros-melodic-ros-canopen
# Install MoveIt
sudo apt install -y ros-melodic-moveit*
# Update Gazebo Model
mkdir -p ~/.gazebo
hg clone https://bitbucket.org/osrf/gazebo_models
mv ~/gazebo_models ~/.gazebo/models
