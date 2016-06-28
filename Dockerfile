FROM rightscale/ops_os_base

COPY oauth2_proxy /root
WORKDIR /root

VOLUME /conf
EXPOSE 8000

CMD ["./oauth2_proxy", "-config", "/conf/oauth2_proxy.cfg"]
