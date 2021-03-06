sudo apt-get update -y &&
sudo apt-get install build-essential cmake pkg-config -y &&
echo "first batch completed"
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev -y &&
echo "second batch completed"
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y && 
echo "third batch completed"
sudo apt-get install libxvidcore-dev libx264-dev -y &&
echo "fourth batch completed"
sudo apt-get install libgtk2.0-dev libgtk-3-dev -y &&
echo "fifth batch completed"
sudo apt-get install libatlas-base-dev gfortran -y &&
echo "all dependencies installed"
