FROM ros:humble

SHELL ["/bin/bash", "-c"]

# dependencies
RUN apt-get update --fix-missing && \
    apt-get install -y git \
                       nano \
                       vim \
                       wget \
                       python3-pip \
                       libeigen3-dev \
                       tmux \
                       ros-humble-rviz2
RUN apt-get -y dist-upgrade
RUN pip3 install transforms3d

RUN mkdir -p sim_ws/src/

RUN apt-get update && apt-get install -y  \
    lsb-release \
    wget \
    gnupg

RUN wget https://packages.osrfoundation.org/gazebo.gpg -O /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null
RUN apt-get update &&\
    apt-get install -y ros-humble-ros-gz

WORKDIR '/sim_ws'
ENTRYPOINT ["/bin/bash"]