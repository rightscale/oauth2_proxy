FROM rightscale/ops_os_base

COPY oauth2_proxy /root
WORKDIR /root

VOLUME /conf
EXPOSE 8000

CMD ["./oauth2_proxy", "-config", "/conf/oauth2_proxy.cfg"]

# This enables us to set the git commit reference SHA in the docker image
ARG gitref=unknown
LABEL git.ref=${gitref}
