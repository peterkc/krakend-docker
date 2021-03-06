FROM alpine:3.5

ENV KRAKEND_VERSION 0.3.9
RUN apk add --no-cache ca-certificates
ADD http://repo.krakend.io/bin/krakend_${KRAKEND_VERSION}_amd64.tar.gz krakend_${KRAKEND_VERSION}_amd64.tar.gz
RUN tar xvfz krakend_${KRAKEND_VERSION}_amd64.tar.gz

VOLUME [ "/etc/krakend" ]

ENTRYPOINT [ "/krakend" ]
CMD [ "run" ]

EXPOSE 8080
