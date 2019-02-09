# This is a tool to automate installing OpenCV on Raspberry Pi.
## It has been developed and tested on Raspian Stretch(Raspian version 9) on a Raspberry Pi Model 3, but should work on most if not all others
### It will not install OpenCV in respect to python or java, you will still be able to run it with python, however as well as most other languages, for example C++(which is recommended for speed, as Raspberry Pis don't have much computing power)

### Running the scripts independantly
Move into directory where scripts are located.

The install-dependencies script uses apt-get, if your system does not support that it will not work(raspian does by default)

to run it, use it as follows:
./install-dependancies 


The download-OpenCV script will download OpenCV on your machine. It will throw errors if install-dependancies is not run first.

Run it as follows:

./install-OpenCV <version of OpenCV that you want(for example 3.4.5)> <(optional) number of cores you want to use it to run it(the more cores you use the faster it will compile)>

Reasons to use it: you want to build OpenCV with specific cmake parameters

That being said, you will need to manually run cmake and make.
Here is a link to all the info you will need to do this: https://docs.opencv.org/3.4/d7/d9f/tutorial_linux_install.html

### Running it all with one script

The install-all script will get everything set up, so you can skip right to development on your Pi!

To run it use the following:

./install all <desired OpenCV version> <number of cores you want to use to make>

to test, open the python idle with "python" and type "import cv2", then run "cv2.\__version__"
