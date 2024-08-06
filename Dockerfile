FROM golang:1.22.0

WORKDIR /app 

COPY . .

RUN go mod download

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64 

RUN go build -o /dfile

CMD ["/dfile"]
