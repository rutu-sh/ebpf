FROM golang:1.22.3
WORKDIR /app
ENV GOPROXY=https://goproxy.cn
COPY core/go.mod ./
COPY core/*.go .
RUN go mod tidy && go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -o go-app
CMD ["./go-app"]