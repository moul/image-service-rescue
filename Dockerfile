## -*- docker-image-name: "armbuild/scw-service-rescue:trusty" -*-
FROM armbuild/scw-distrib-ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update  \
 && apt-get -q -y upgrade \
 && apt-get install -y -q \
    busybox \
    ethstatus \
    htop \
    iotop \
    iperf \
    lsof \
    lvm2 \
    memtester \
    parted \
    partimage \
    rsync \
    socat \
    tcpdump \
    traceroute \
  && apt-get clean


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
