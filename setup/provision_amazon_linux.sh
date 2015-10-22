# curl https://raw.githubusercontent.com/huyng/docker-images/master/provision.sh | sudo sh


sudo yum --enablerepo=epel install -y bash-completion
sudo yum install -y git
sudo yum install -y python27
sudo yum install -y python27-devel
sudo yum install -y python27-pip
sudo yum install -y atlas
sudo yum install -y atlas-devel
sudo yum install -y gcc-gfortran
sudo yum install -y htop
sudo yum install -y docker-io
sudo yum install -y libpng-devel libjpeg-devel freetype-devel
sudo gpasswd -a ${USER} docker
sudo service docker start

sudo pip-2.7 install numpy scipy theano ipython matplotlib flask jupyter

echo "%sudo   ALL=(ALL:ALL) ALL" >> /etc/sudoers

groupadd sudo
