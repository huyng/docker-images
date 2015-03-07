# curl https://raw.githubusercontent.com/huyng/docker-images/master/provision.sh | sudo sh

export DEBIAN_FRONTEND=noninteractive 

apt-get -y update
apt-get install -y git docker.io
sudo gpasswd -a ${USER} docker
sudo service docker.io restart

# install cuda
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_6.5-14_amd64.deb -O cuda.deb
dpkg -i cuda.deb && rm cuda.deb
apt-get update
apt-get -y install cuda && apt-get clean &&  rm -rf /var/lib/apt/lists/