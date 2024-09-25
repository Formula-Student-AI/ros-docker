# Use a build argument to specify the base image
ARG BASE_IMAGE

# Use the specified base image or default to 'ros:galactic-desktop' if not provided
FROM ${BASE_IMAGE:-ros:galactic-desktop}

# Add vscode user with same UID and GID as your host system
ARG USERNAME=vscode
ARG USER_UID=1001
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo \
    && echo "$USERNAME ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Switch from root to user
USER $USERNAME

# Add user to video group to allow access to webcam
RUN sudo usermod --append --groups video $USERNAME

# Install Git
RUN sudo apt-get install -y git

# Rosdep update
RUN rosdep update

# Update all packages
RUN sudo apt-get update && sudo apt-get upgrade -y

# Source the ROS setup file
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
