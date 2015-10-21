#!/bin/sh

# curl https://raw.githubusercontent.com/huyng/docker-images/master/setup/add_user.sh | sudo sh

adduser huyng
usermod -aG sudo huyng
mkdir -p /home/huyng/.ssh

SSH_PUB_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDfwXnygKWyFMFMXbTSGwV7YHVOYU43jSCDOjNFXo87cJS763nBpmUlUq1dhy4uodAkyUoEmA7pH+nVekvV4JrrpUPPxeWtX0yj+bZ2sP5Dvm8oeoVolEMzoHWI/SwPtcEcsNKM2SACogqECiTKMRd8QseNzj9fMO+3VOoHxIGgrKwMQu2Y+G0Xi9F2Y6vfTzakWkTZ2V7aZcuUKno9TQX4w+Je7OWpOofABbjNMPYADcxkYyy/qSXNcVJuS+PQvQVK0AvBTZ4JvnOiCoB71+cnAzuRx2RaX9va5nMHDllu5N4BdQiOolcgYQIKPE/h2YKU1USmNTKC2KknPdQ68VfN"
echo $SSH_PUB_KEY >> /home/huyng/.ssh/authorized_keys

chown -R huyng:huyng /home/huyng/
chmod 700 /home/huyng/.ssh
chmod 600 /home/huyng/.ssh/*


