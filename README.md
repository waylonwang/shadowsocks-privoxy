# shadowsocks-privoxy

    shadowsocks client for socks5 proxy
    privoxy for http proxy
    forked from bluebu/shadowsocks-privoxy
    upgrade shadowsocks to shadowsocks-py-2.9.1

## Image:

~~~
docker pull cloudvalley/shadowsocks-privoxy
~~~


## Run:

~~~
docker run -i -t -e SERVER_ADDR=ss.server.ip -e SERVER_PORT=port -e PASSWORD=123456 cloudvalley/shadowsocks-privoxy
~~~
