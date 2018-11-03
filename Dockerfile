FROM fedora

LABEL maintainer "David Bowen <david@myforest.com>"

RUN \
    dnf install --assumeyes gnuplot \
    && \
    pip3 install --upgrade libusb1 python-twitter \
    && \
    pip3 install --pre pywws \
    && \
    dnf clean all

#Verify pywws is installed
RUN pywws-version
