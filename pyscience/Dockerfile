FROM ubuntu:14.04
RUN apt-get update && apt-get -y install \
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
        cmake 
RUN pip install -U pip wheel
RUN pip install \
        Flask \
        psycopg2 \
        numpy \
        scipy \
        matplotlib \
        pandas \
        ipython \
        pyzmq \
        xlrd
RUN pip install Pillow



