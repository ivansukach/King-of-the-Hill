# Container to compile the app
FROM golang:1.13-alpine AS auth

WORKDIR /build

COPY . .

RUN go build -o /app/pokemon-auth -mod=vendor
#o - output
# Final container image
FROM alpine:latest

WORKDIR /app

COPY --from=auth /app/pokemon-auth .

EXPOSE 1325

ENTRYPOINT ["/app/pokemon-auth"]
#i can call /app/http-server during the executing of program