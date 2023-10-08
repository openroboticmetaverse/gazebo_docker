# gazebo_docker

## How to run
Start docker container
```
sudo docker compose up
```

Open VNC viewer in a browser: http://localhost:8080/vnc.html

Start gazebo in a new terminal:
```
sudo docker exec -it gazebo_docker-sim-1 /bin/bash
source /opt/ros/humble/setup.bash
ign gazebo
```