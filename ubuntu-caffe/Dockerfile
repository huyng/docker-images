FROM huyng/pyscience


RUN cd /usr/local && \
    git clone https://github.com/BVLC/caffe.git && \
    cd caffe && \
    git checkout c6414ea7cab5917c904729c87f786e0a5909475c && \
    mv Makefile.config.example Makefile.config && \
    make all -j

ENV PATH ${PATH}:/usr/local/caffe/build/tools


