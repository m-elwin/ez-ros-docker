# EZ ROS Docker Container
Used by me to do ROS development on ArchLinux with minimal differences between
that experience and running ROS natively on Ubuntu. 

# Features
0. Simple script to launch the container and run commands in it
1. Runs as your user id inside the container
2. Mounts /dev in privileged mode so you can access all your local devices (but as your user)
3. Enables sudo apt and sudo apt-get to install packages as needed
4. Mounts a specified local directory as your home directory in the container
5. Enables launching of X windows
