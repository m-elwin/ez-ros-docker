# EZ ROS Docker Container
Used by me to do ROS development on ArchLinux with minimal differences between
that experience and running ROS natively on Ubuntu. 

# Basic usage
`./usedocker bash` (to launch bash in the container)
`./usedocker zsh` (to launch zsh in the container)

See `./usedocker` to print ussage information.

On first run the commands above will build the container, start it, and prompt you to create a default
home directory on the host. You may wish to copy some configuration files (such as .bashrc or .zshrc) from your home directory
to the docker container (especially so you can source /opt/ros/melodic/setup.{zsh|bash}).


# Features
0. Simple script to launch the container and run commands in it
1. Runs as your user id inside the container
2. Mounts /dev in privileged mode so you can access all your local devices (but as your user)
3. Enables sudo apt and sudo apt-get to install packages as needed
4. Mounts a specified local directory as your home directory in the container
5. Enables launching of X windows
