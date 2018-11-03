FROM fedora

LABEL maintainer "David Bowen <david@myforest.com>"

RUN \
    dnf install --assumeyes \
        gnuplot \
    && \
    \
    pip3 install --upgrade \
        libusb1 \
        oauth2 \
        python-twitter \
    && \
    \
    pip3 install --pre \
        pywws \
    && \
    dnf clean all

#Test pywws is installed
RUN pywws-version
