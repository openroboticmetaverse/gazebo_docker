# gazebo_docker

## How to run
Start docker container
```
docker compose up
```

Go to VNC viewer: http://localhost:8080/vnc.html

Start gazebo in a new terminal:
```
docker exec -it gazebo_docker-sim-1 /bin/bash
source /opt/ros/galactic/setup.bash
gz sim shapes.sdf --render-engine ogre
```