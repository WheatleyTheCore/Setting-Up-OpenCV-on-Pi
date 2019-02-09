# Setting-Up-OpenCV-on-Pi
This is a tutorial on setting up Opencv(an open source computer vision library, which enables development for object detection and such) on a raspberry pi.

This tutorial assumes you are using Raspian Stretch, Raspian version 9.

It will only cover installing and compiling OpenCV, so if you need python or anything like that, you must find how to do so elsewhere. This information used in this is from here: https://www.alatortsev.com/2018/09/05/installing-opencv-3-4-3-on-raspberry-pi-3-b/

All code is to be typed in a terminal.

## First Steps

Install needed dependancies with the following commands:
```
sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libgtk2.0-dev libgtk-3-dev
sudo apt-get install libatlas-base-dev gfortran
```
apt-get is the default package manager for raspian. It is used to install libraries and tools and such.
Its syntax is as follows:
apt-get <command> <package-name>

## Downloading the OpenCV(version 3.4.5) library from github

Your Pi may or may not have git installed already. If you type 'git --verison' and you get an error, use 'sudo apt-get install git'.

Next, use the following commands to downlaod the code:
```
wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.5.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.5.zip
```
```
unzip opencv.zip
unzip opencv_contrib.zip
```
## Now, on to compilation!!
```
cd ~/opencv-3.4.5
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.4.5/modules \
    -D BUILD_EXAMPLES=ON ..
```
## Building
To build OpenCV use the following command:
```
make
```
if your pi has multiple cores, use 'make -j<number of cores>'.
-j<number of cores> will ensure all of the cores are used, speeding up the build process.
  
Next, to complete the installation, use the following commands:
```
sudo make install
sudo ldconfig
sudo apt-get update
```
THIS WILL TAKE AL LONG TIME AND POSSIBLY OVERHEAT YOUR PI, POINT A FAN OR TWO AT IT AND SET THEM ON MAX, AND CHECK PERIODICALLY TO MAKE SURE IT DOESNT OVERHEAT!
## Finishing up

Finally, use 
```
sudo reboot
```
to reboot your Pi.

To check that it's installed correctly, type:
```python
import cv2 
cv2.__version__
```
