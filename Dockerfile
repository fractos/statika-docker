FROM golang:1.9.2

WORKDIR /go/src/statika
RUN wget -O /opt/statika.tar.gz https://github.com/fractos/statika/archive/v0.1.0-alpha.1.tar.gz \
	&& tar -xzvf /opt/statika.tar.gz --strip-components=1 -C /go/src/statika

RUN go-wrapper download
RUN go-wrapper install

CMD ["go-wrapper", "run"]

