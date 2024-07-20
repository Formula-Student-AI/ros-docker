FROM osrf/ros:galactic-desktop

# Add vscode user with same UID and GID as your host system
# (copied from https://code.visualstudio.com/remote/advancedcontainers/add-nonroot-user#_creating-a-nonroot-user)
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
# Switch from root to user
USER $USERNAME

# Add user to video group to allow access to webcam
RUN sudo usermod --append --groups video $USERNAME

# Update all packages
RUN sudo apt update && sudo apt upgrade -y

# Install Git
RUN sudo apt install -y git

# Rosdep update
RUN rosdep update

# EUFS setup
# SHELL ["/bin/bash", "-c"]
RUN sudo mkdir -p /fsai\
    && cd /fsai
RUN sudo rosdep install --from-paths /fsai --ignore-src -r -y
RUN sudo echo 'export EUFS_MASTER=/fsai' >> ~/.bashrc
# RUN /bin/bash -c "source ~/.bashrc"
#RUN sudo rosdep install --from-paths $EUFS_MASTER --ignore-src -r -y

# Install dependencies for colcon to work
RUN sudo apt install -y libyaml-cpp-dev
RUN sudo apt install -y libgazebo11-dev
RUN sudo apt install -y ros-galactic-gazebo-ros-pkgs ros-galactic-joint-state-publisher ros-galactic-gazebo-plugins
RUN sudo apt install ros-galactic-ackermann-msgs

# Recommended (see known issues on EUFS getting started guide)
RUN sudo apt install -y python3-tk

# Dependencies to get gazebo running
RUN sudo apt install ros-galactic-xacro

# Source the ROS setup file
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc

#WORKDIR /fsai
#RUN . /opt/ros/${ROS_DISTRO}/setup.bash
#RUN colcon build