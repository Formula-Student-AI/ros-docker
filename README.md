# README

This folder provides .devcontainer files for VSCode to build a Ubuntu 20.04 docker container with ROS 2 Galactic installed.

## Versions
- OS: Ubuntu 20.04 (Focal)
- ROS: ROS 2 Galactic

## Instructions

> **Warning:** If you're on a MacBook with an M-chip (most newer MacBook models) or any computer with an ARM CPU, you will need to switch to the 'dynamic-os-selection' branch after cloning the repo (`git switch dynamic-os-selection`). This is a temporary fix.

0. Download VScode and Docker Desktop. You may need to install the Dev Container VScode extension. For Windows users: Install WSL (Windows Subsystem for Linux) using `wsl --install` in PowerShell. When you open VSCode you need to click on the blue arrows in the bottom left of the window and then click 'connect to WSL' to open VSCode in Linux ([read more about WSL online](https://www.sitepoint.com/wsl2/) if you're having any trouble with this). WSL integration may have to be enabled in Docker Desktop. In Docker Desktop, go to: Settings -> Resources -> WSL Integration.

1. Navigate to your home folder and clone this repo
   ```
   git clone https://github.com/Formula-Student-AI/ros-docker
   ```

2. Reopen in Container
   - Open the cloned repository in VSCode.
   - Click on the blue box in the bottom left-hand corner of the VSCode window.
   - Select "Reopen in Container".

3. Start building ROS packages!

## Credit
- ijnek: https://github.com/ijnek/ros-devcontainer-template
