FROM fedora

LABEL maintainer "David Bowen <david@myforest.com>"

RUN \
    dnf install --assumeyes python-pip gnuplot \
    && \
    pip install --upgrade libusb1 python-twitter \
    && \
    pip install --pre pywws \
    && \
    dnf clean all

#Verify pywws is installed
RUN pywws-version
