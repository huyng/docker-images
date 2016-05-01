#!/bin/bash
cd /tmp

apt-get update
apt-get install -y wget
apt-get -y install \
        build-essential \
        pkg-config \
        python \
        python-dev \
        python-pip \
        libpq-dev \
        libpng12-0 \
        libpng12-dev \
        libfreetype6-dev \
        libfreetype6 \
        libjpeg8-dev \
        libjpeg8 \
        libatlas-base-dev \
        libzmq-dev \
        libopencv-dev \
        gfortran \
        git \
        cmake \
        wget \
        libprotobuf-dev \
        libleveldb-dev \
        libsnappy-dev \
        libopencv-dev \
        libboost-all-dev \
        libhdf5-serial-dev \
        libgflags-dev \
        libgoogle-glog-dev \
        liblmdb-dev \
        protobuf-compiler \
        python-opencv \
        mplayer \
        youtube-dl

pip install ---upgrade pip wheel
pip install Flask
pip install psycopg2
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas
pip install ipython
pip install pyzmq
pip install xlrd
pip install Pillow
pip install theano
pip install networkx
pip install cython
pip install scikit-image
pip install scikit-learn
pip install h5py
pip install leveldb
pip install nose
pip install python-dateutil
pip install protobuf
pip install python-gflags
pip install theano
pip install keras 
pip install --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.8.0-cp27-none-linux_x86_64.whl

    
### Cuda Time
wget http://developer.download.nvidia.com/compute/cuda/7_0/Prod/local_installers/cuda_7.0.28_linux.run -O cuda.run && \
      chmod +x cuda.run && \
      mkdir cuda_installers && \
      ./cuda.run -extract=`pwd`/cuda_installers && \
      cd cuda_installers && \
      ./NVIDIA-Linux-x86_64-*.run -s -N --no-kernel-module && \
      ./cuda-linux64-rel-*.run -noprompt && \
      cd .. && \
      rm -rf cuda_installers cuda.run
      
export PATH=/usr/local/cuda/bin:${PATH}
echo "/usr/local/cuda/lib64" > /etc/ld.so.conf.d/x86_64-linux-cuda.conf && ldconfig


