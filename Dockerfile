FROM alpine:3.8
MAINTAINER docker <docker@gmail.com>

ENV WEB_PASSWORD password
ENV PUBLIC_VKEY 12345678
ENV DOMAIN nps.youdomain.com
ENV TZ=Asia/Shanghai

WORKDIR /
ENV NPS_VERSION 0.25.3

RUN set -x && \
	wget --no-check-certificate https://github.com/cnlh/nps/releases/download/v${NPS_VERSION}/linux_amd64_server.tar.gz && \ 
	tar xzf linux_amd64_server.tar.gz && \
        wget --no-check-certificate https://github.com/cnlh/nps/releases/download/v${NPS_VERSION}/linux_amd64_client.tar.gz && \
        tar xzf linux_amd64_client.tar.gz && \
	rm -rf *.tar.gz && \
	mkdir /file && \
	wget --no-check-certificate https://github.com/cnlh/nps/releases/download/v${NPS_VERSION}/windows_amd64_client.tar.gz -O /file/windows_amd64_client.tar.gz
  
VOLUME /conf

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]



