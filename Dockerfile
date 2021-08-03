FROM golang:1.16.6-alpine3.14
RUN wget https://releases.hashicorp.com/terraform/1.0.3/terraform_1.0.3_linux_amd64.zip; \
    unzip terraform_1.0.3_linux_amd64.zip; \
    rm terraform*.zip; \
    mv terraform /usr/bin; \
    apk add gcc musl-dev
#WORKDIR /go/src
#COPY . .
RUN pwd
RUN ls -lha
#RUN go get -d -v ./...
CMD ["./entrypoint.sh"]
