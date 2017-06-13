FROM centos

LABEL maintainer "David Bowen <david@myforest.com>"

RUN rpm -iUh \
        http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm && \
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
