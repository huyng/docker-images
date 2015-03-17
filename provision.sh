# curl https://raw.githubusercontent.com/huyng/docker-images/master/provision.sh | sudo sh

export DEBIAN_FRONTEND=noninteractive 

apt-get -y update
apt-get install -y git docker.io
sudo service docker.io restart

# install cuda
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_6.5-14_amd64.deb -O cuda.deb
dpkg -i cuda.deb && rm cuda.deb
apt-get update
apt-get -y install cuda && apt-get clean &&  rm -rf /var/lib/apt/lists/

sudo yum --enablerepo=epel install -y bash-completion
sudo pip-2.7 install numpy scipy theano ipython
sudo yum install -y git
sudo yum install -y python27
sudo yum install -y python27-devel
sudo yum install -y python27-pip
sudo yum install -y atlas
sudo yum install -y atlas-devel
sudo yum install -y gcc-gfortran
sudo yum install -y htop
sudo yum install -y docker-io
sudo gpasswd -a ${USER} docker
sudo service docker start



sudo PATH=$PATH:/opt/nvidia/cuda/bin THEANO_FLAGS=mode=FAST_RUN,device=gpu0,floatX=float32 python27 gputest.py
