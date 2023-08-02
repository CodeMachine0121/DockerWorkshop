FROM golang:alpine as BUILDER
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build -o main


FROM nginx:latest
EXPOSE 80
RUN mkdir /app
COPY --from=builder /app/main /app/main 
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
CMD ["sh", "-c", "/app/main"]