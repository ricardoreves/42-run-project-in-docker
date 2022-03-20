# Image of latest official ubuntu 
FROM ubuntu:latest

# No question/dialog pops up during apt-get install
ARG DEBIAN_FRONTEND=noninteractive

# Update and upgrade packages
RUN apt-get update && apt-get upgrade -y

# Install utility packages
RUN apt-get -qq install apt-utils git vim

# Install c compiler packages
RUN apt-get -qq install gcc make xorg libxext-dev libbsd-dev

# Install valgrind packages
RUN apt-get -qq install xvfb xdotool valgrind

# Install norminette package
RUN apt-get -qq install python3-pip && pip3 install Norminette

CMD /bin/bash -c ". ~/.bashrc; cd /project/; bash"