#!/bin/bash

#run the simulation
ros2 launch clearpath_gz simulation.launch.py &

# Wait for Gazebo ROS topics
echo "Waiting for Gazebo to be ready..."


# Wait for simulation time to be published
until ros2 topic echo /clock ; do # this does not work as intended
    echo "Waiting for simulation time..."
    sleep 1
done

echo "Gazebo is ready! Starting application..."
sleep 5

ros2 launch clearpath_manipulators moveit.launch.py setup_path:=/root/clearpath use_sim_time:=true
ros2 launch clearpath_viz view_moveit.launch.py namespace:=a200_0000 use_sim_time:=True
