apt-get update
apt-get install -y git vim pavucontrol gnome-tweak-tool openssh-server screen htop
apt-get install -y linux-headers-generic build-essential dkms



### Install wifi fixes 
#######################################################
git clone https://github.com/pvaret/rtl8192cu-fixes.git
dkms add ./rtl8192cu-fixes
dkms install 8192cu/1.9
depmod -a
cp ./rtl8192cu-fixes/blacklist-native-rtl8192.conf /etc/modprobe.d/

# Disable power management for realtek chipset (prevents wifi dropping)
# you can check the status of this here: "cat /sys/module/8192cu/parameters/rtw_power_mgnt"
# http://www.mikeslab.net/?p=178
cp ./rtl8192cu-fixes/8192cu-disable-power-management.conf /etc/modprobe.d/8192cu.conf


 

### Install cuda
#######################################################
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.0-28_amd64.deb
dpkg -i cuda-repo-ubuntu1404_7.0-28_amd64.deb
apt-get update
apt-get install -y cuda
apt-get install -y nvidia-346-uvm

# make sure to initialize gpu0 with unified memory
# https://askubuntu.com/questions/590319/how-do-i-enable-automatically-nvidia-uvm
# https://www.linuxquestions.org/questions/slackware-14/nividia-driver-slackbuild-cuda-initializaton-error-glitch-rfc-4175510979/
echo "nvidia-modprobe --create-nvidia-device-file=0 --unified-memory; exit 0" > /etc/rc.local



# Install docker
#######################################################
wget -qO- https://get.docker.com/ | sh

# create a new executable to run docker with the correct device flags
cat <<EOF > /usr/local/bin/d.run
#!/bin/sh
docker run --device /dev/nvidiactl:/dev/nvidiactl --device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidia-uvm:/dev/nvidia-uvm \$@
EOF
chmod 755 /usr/local/bin/d.run

cat <<EOF > /usr/local/bin/d.iclean
#!/bin/sh
docker rmi \$(docker images | grep "^<none>" | awk "{print \$3}")
EOF
chmod 755 /usr/local/bin/d.iclean


cat <<EOF > /usr/local/bin/d.cclean
#!/bin/sh
docker rm \$(docker ps -a -q)
EOF
chmod 755 /usr/local/bin/d.cclean



### Install spotify
#######################################################
apt-add-repository -y "deb http://repository.spotify.com stable non-free"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
apt-get update -qq
apt-get install -y spotify-client
