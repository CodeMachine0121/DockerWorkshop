FROM golang:alpine as BUILDER
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build -o main

EXPOSE 8888

CMD [ "./main" ]
