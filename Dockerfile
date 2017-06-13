FROM centos

LABEL maintainer "David Bowen <david@myforest.com>"

RUN # Enable the EPEL repo to allow access to python-pip \
    yum install --assumeyes \
        epel-release \
    && \
    # Install OS pre-requisites \
    yum install --assumeyes \
        gnuplot \
        libusb \
        python-pip \
    && \
    # Install Python pre-requisites \
    pip install --upgrade \
        libusb1 \
        oauth2 \
        pip \
        python-twitter \
    && \
    # Allow pre-release versions of pywws \
    pip install --pre \
        pywws \
    && \
    yum clean all
