FROM golang:1.22
WORKDIR /app
COPY core/go.mod core/go.sum ./
RUN go mod download

COPY core/*.go .

RUN CGO_ENABLED=0 GOOS=linux go build -o sample-cont
CMD ["./sample-cont"]