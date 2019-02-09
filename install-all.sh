#!/bin/bash

./install-dependencies.sh &&

./download-OpenCV.sh $1 &&

cd $PWD/opencv-$1
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-$1/modules \
    -D BUILD_EXAMPLES=ON ..
    
if [ $2 ]
then
  make -j$2
else
  make
fi
echo "all done!"
