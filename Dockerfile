FROM ubuntu:16.04
WORKDIR "/root"
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install lsb-release -y 
RUN apt-get install curl -y
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN apt-get update
RUN apt-get install ros-kinetic-desktop-full -y
RUN echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
RUN source ~/.bashrc
RUN apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential -y
