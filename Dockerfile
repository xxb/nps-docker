FROM ffdfgdfg/nps:0.25.3

MAINTAINER docker <docker@gmail.com>

ENV WEB_PASSWORD password
ENV PUBLIC_VKEY 12345678
ENV TZ=Asia/Shanghai

ADD nps.conf /conf/nps.conf
ADD server.key /conf/server.key
ADD server.pem /conf/server.pem
CMD ["/nps"]
