# README

This folder provides .devcontainer files for VSCode to build a ROS 2 workspace and simulation.

## Versions
- OS: Ubuntu 20.04 (Focal)
- ROS: ROS 2 Galactic

## Instructions

0. Download VScode and Docker Desktop

1. Clone this Repo
   ```
   git clone https://github.com/danielpeppe/fsai-uob
   cd fsai-uob/getting-started
   ```

2. Reopen in Container
   - Open the cloned repository in VSCode.
   - Click on the blue box in the bottom left-hand corner of the VSCode window.
   - Select "Reopen in Container".

3. Build the Workspace
   ```
   colcon build --symlink-install
   ```

4. Source the Setup Script
   ```
   source install/setup.bash
   ```

5. Launch ROS 2
   ```
   ros2 launch eufs_launcher eufs_launcher.launch.py
   ```

## Credit
- ijnek: https://github.com/ijnek/ros-devcontainer-template
- EUFS: https://gitlab.com/eufs
