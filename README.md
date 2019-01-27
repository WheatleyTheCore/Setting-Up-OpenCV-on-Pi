# Setting-Up-OpenCV-on-Pi
This is a tutorial on setting up Opencv(an open source computer vision library, which enables development for object detection and such) on a raspberry pi.

This tutorial assumes you are using Raspian Stretch, Raspian version 9.

It will only cover installing and compiling OpenCV, so if you need python or anything like that, you must find how to do so elsewhere. This information used in this is from here: https://www.alatortsev.com/2018/09/05/installing-opencv-3-4-3-on-raspberry-pi-3-b/

## First Steps

Install needed dependancies with the following commands:

sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libgtk2.0-dev libgtk-3-dev
sudo apt-get install libatlas-base-dev gfortran
