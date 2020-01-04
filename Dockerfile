FROM ffdfgdfg/nps

MAINTAINER docker <docker@gmail.com>
ARG Frp_ver=0.30.0
ENV DASHBOARD_PWD password
ENV TOKEN 12345678
ENV ALLOW_PORTS 10000-10020
ENV MAX_POOL_COUNT 10
ENV SUBDOMAIN_HOST frps.com
ENV FRP_PORT 443
ENV V_HTTP_PORT 80
ENV V_HTTPS_PORT 443
ENV TZ=Asia/Shanghai

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
