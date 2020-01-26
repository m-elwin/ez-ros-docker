# Easy ROS Docker Container
Used by me to do ROS development on ArchLinux with minimal differences between
that experience and running ROS natively on Ubuntu. 

The goal is to make running things in the docker container as similar to running code
on a native Ubuntu 18.04 LTS installation on your real hardware as possible.

# Basic usage
`./usedocker bash` (to launch bash in the container)

`./usedocker zsh` (to launch zsh in the container)

See `./usedocker` to print usage information.

On first run the commands above will build the container, start it, and prompt you to create a default
home directory on the host. You may wish to copy some configuration files (such as `.bashrc` or `.zshrc`) from your home directory
to the docker container (especially so you can source `/opt/ros/melodic/setup.{zsh|bash}`).



# Features
0. Simple script to launch the container and run commands in it
1. Runs as your user id inside the container
2. Mounts /dev in privileged mode so you can access all your local devices (but as your user)
3. Enables sudo apt and sudo apt-get to install packages as needed
4. Mounts a specified local directory as your home directory in the container
5. Enables launching of X windows
6. The docker container is run in privaleged mode and accesses all the host devices
   - This lets you experiment with, for example, plugging/unpluggin usb serial devices
   - You are not root in the container
7. The docker container is run with host networking, so any ports that are open are as if
    they are on your host computer.

