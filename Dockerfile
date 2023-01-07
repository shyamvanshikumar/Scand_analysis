FROM osrf/ros:noetic-desktop

RUN apt-get update
RUN apt-get install -y git && apt-get install -y python3-pip
RUN apt-get install -y python3.8-tk

RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

WORKDIR /catkin_ws
RUN pip install numpy --upgrade && pip install bagpy && pip install notebook

COPY . .