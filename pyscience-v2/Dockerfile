FROM ubuntu:14.04

# install cuda
WORKDIR /tmp
RUN sudo wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.0-28_amd64.deb -O cuda.deb
RUN sudo dpkg -i cuda.deb && rm cuda.deb
RUN sudo apt-get update
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get -y install cuda 

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



