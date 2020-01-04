FROM ffdfgdfg/nps:0.25.3

MAINTAINER docker <docker@gmail.com>

ENV WEB_PASSWORD password
ENV PUBLIC_VKEY 12345678
ENV TZ=Asia/Shanghai

copy conf /conf
CMD ["/nps"]
