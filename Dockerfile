FROM centos

LABEL maintainer "David Bowen <david@myforest.com>"

RUN yum -y install \
        epel-release && \
    yum -y install \
        libusb \
        python-pip \
        gnuplot \
    && \
    pip install --upgrade \
        pip \
        libusb1 \
        python-twitter \
        oauth2 \
    && \
    pip install \
        pywws \
        --pre \
    && \
    yum clean all
