#!/bin/bash
workspace=$(pwd)

source ~/.bashrc




gnome-terminal -t "pos_follow1" -x sudo bash -c "cd ${workspace}/pos_follow1; source devel/setup.bash && roslaunch arm_control arx5.launch; exec bash;"
sleep 1
gnome-terminal -t "pos_follow2" -x sudo bash -c "cd ${workspace}/pos_follow2; source devel/setup.bash && roslaunch arm_control arx5.launch; exec bash;"


