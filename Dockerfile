FROM golang:1.9.2

ENV AWS_REGION aws-region
ENV CONFIGURATION_URL s3-address-of-configuration-json-file
ENV SERVICES_URL s3-address-of-services-json-file

WORKDIR /go/src/statika
RUN wget -O /opt/statika.tar.gz https://github.com/fractos/statika/archive/v0.1.0.tar.gz \
	&& tar -xzvf /opt/statika.tar.gz --strip-components=1 -C /go/src/statika

RUN go-wrapper download
RUN go-wrapper install

CMD ["go-wrapper", "run"]

