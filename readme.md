# Simulation of GLIM algorithm running on a husky robot
## Running the simulation

Clone this repo:
>git clone https://github.com/IakovPodmarev/glim-husky-sim 

Navigate to the repo:
>cd glim-husky-sim

Add docker to xhost users to allow it render a window
> xhost local:docker 

Run the services
> docker compose up

Wait

In the emerged gazebo window add a200_0000/ before cmd_vel in topic 
>/a200_0000/cmd_vel

Use wasd to navigate husky 
