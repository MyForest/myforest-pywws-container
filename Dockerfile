FROM centos

LABEL maintainer "David Bowen <david@myforest.com>"

RUN \
    yum install --assumeyes \
        epel-release \
    && \
    \
    yum install --assumeyes \
        gnuplot \
        libusb \
        python-pip \
    && \
    \
    pip install --upgrade \
        libusb1 \
        oauth2 \
        pip \
        python-twitter \
    && \
    \
    pip install --pre \
        pywws \
    && \
    yum clean all
