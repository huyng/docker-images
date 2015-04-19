#
# Docker image for science stuff
# 
# To leverage the gpu, run docker like so:
# 
#   docker run -it --device /dev/nvidiactl:/dev/nvidiactl --device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidia-uvm:/dev/nvidia-uvm huyng/pyscience
#


FROM ubuntu:14.04

WORKDIR /tmp

# Install cuda
RUN apt-get install -y wget
RUN wget http://developer.download.nvidia.com/compute/cuda/7_0/Prod/local_installers/cuda_7.0.28_linux.run -O cuda.run && \
    chmod +x cuda.run && \
    mkdir cuda_installers && \
    ./cuda.run -extract=`pwd`/cuda_installers && \
    cd cuda_installers && \
    ./NVIDIA-Linux-x86_64-*.run -s -N --no-kernel-module && \
    ./cuda-linux64-rel-*.run -noprompt && \
    cd .. && \
    rm -rf cuda_installers cuda.run
ENV PATH /usr/local/cuda/bin:${PATH}
RUN echo "/usr/local/cuda/lib64" > /etc/ld.so.conf.d/x86_64-linux-cuda.conf && ldconfig


RUN apt-get update && \
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
        python-opencv

RUN pip install -U pip wheel
RUN pip install Flask && \
    pip install psycopg2 && \
    pip install numpy && \
    pip install scipy && \
    pip install matplotlib && \
    pip install pandas && \
    pip install ipython && \
    pip install pyzmq && \
    pip install xlrd && \
    pip install Pillow && \
    pip install theano && \
    pip install networkx && \
    pip install cython && \
    pip install scikit-image && \
    pip install scikit-learn && \
    pip install h5py && \
    pip install leveldb && \
    pip install nose && \
    pip install python-dateutil && \
    pip install protobuf && \
    pip install python-gflags

WORKDIR /root


