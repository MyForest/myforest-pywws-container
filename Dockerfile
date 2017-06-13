FROM centos
MAINTAINER David Bowen <david@myforest.com>

RUN rpm -iUh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm && \
    yum -y install libusb python-pip gnuplot && \
    pip install --upgrade pip libusb1 python-twitter oauth2 && \
    pip install pywws --pre && \
    yum clean all
