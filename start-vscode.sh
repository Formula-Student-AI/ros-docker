#!/bin/bash

# Detect the host architecture
ARCH=$(uname -m)

# Set the BASE_IMAGE environment variable based on architecture
if [ "$ARCH" = "arm64" ] || [ "$ARCH" = "aarch64" ]; then
  # For ARM64 architecture (e.g., Apple M1/M2/M3)
  export BASE_IMAGE="ros:foxy-desktop"
else
  # For x86_64 architecture
  export BASE_IMAGE="osrf/ros:galactic-desktop"
fi

# Launch VS Code
code .
