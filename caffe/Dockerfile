FROM huyng/pyscience


RUN cd /opt && \
    git clone https://github.com/BVLC/caffe.git && \
    cd caffe && \
    git checkout c6414ea7cab5917c904729c87f786e0a5909475c && \
    mv Makefile.config.example Makefile.config && \
    echo "WITH_PYTHON_LAYER := 1" >> Makefile.config && \
    make all -j && \
    make test -j

ENV PATH ${PATH}:/opt/caffe/build/tools


