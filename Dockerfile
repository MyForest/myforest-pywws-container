FROM centos

LABEL maintainer "David Bowen <david@myforest.com>"

RUN yum install && \
        epel-release
    yum -y install \
        libusb \
        gnuplot \
        python-pip \
    && \
    pip install --upgrade \
        libusb1 \
        oauth2 \
        pip \
        python-twitter \
    && \
    pip install \
        pywws \
        --pre \
    && \
    yum clean all
