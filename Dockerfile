FROM alpine:latest
LABEL maintainer Waylon Wang <waylon.act@gmail.com>

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------

RUN \
  apk --update --upgrade add \
      py-pip \
#      git \
      libsodium \
      privoxy \
  && rm /var/cache/apk/*

# RUN pip install shadowsocks-py
# RUN git clone https://github.com/shadowsocks/shadowsocks.git master
# WORKDIR master
# RUN git checkout master
# RUN python3 setup.py install
# WORKDIR /
RUN pip install https://github.com/shadowsocks/shadowsocks/archive/master.zip -U

ENV SERVER_ADDR= \
    SERVER_PORT=8899  \
    METHOD=aes-256-cfb \
    TIMEOUT=300 \
    PASSWORD=

#------------------------------------------------------------------------------
# Populate root file system:
#------------------------------------------------------------------------------

ADD rootfs /

#------------------------------------------------------------------------------
# Expose ports and entrypoint:
#------------------------------------------------------------------------------
EXPOSE 8118 7070

ENTRYPOINT ["/entrypoint.sh"]
