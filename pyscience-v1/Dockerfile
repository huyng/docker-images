FROM huyng/pyscience

RUN apt-get update && \
    apt-get install -y \
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
    protobuf-compiler


# install cuda
WORKDIR /tmp
RUN wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_6.5-14_amd64.deb -O cuda.deb
RUN dpkg -i cuda.deb && rm cuda.deb
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install cuda && apt-get clean &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update && apt-get -y install python-opencv
RUN pip install --upgrade networkx
RUN pip install networkx theano numpy cython scipy scikit-image scikit-learn matplotlib ipython h5py leveldb nose pandas python-dateutil protobuf python-gflags


