FROM ros:melodic

RUN apt-get update -yq \
    && apt-get install -yq \
       ros-melodic-desktop-full \
       zsh \
       sudo

# Make Xwindows work with the native x server and qt
ENV DISPLAY=:0
ENV QT_X11_NO_MITSHM=1

# Get the user id from the host system
# These args are passed at build time
# and set up the docker container to have the same
# users as the host system
ARG UNAME=robot
ARG UID=1000
ARG GID=1000

# create a normal user called "$USER"
RUN groupadd -g $GID $UNAME
RUN useradd -m -u $UID -g $GID -s /bin/bash $UNAME

# let the user run apt-get and apt using sudo
RUN chmod u+w /etc/sudoers && echo "$UNAME /usr/bin/apt-get" >> /etc/sudoers && echo "$UNAME /usr/bin/apt" >> /etc/sudoers && chmod u-w /etc/sudoers

# change to the desired user
USER $UNAME
