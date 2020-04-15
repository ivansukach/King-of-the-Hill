module github.com/ivansukach/King-of-the-Hill

go 1.14

//sudo protoc -I protocol --go_out=plugins=grpc:protocol protocol/auth.proto
require (
	github.com/caarlos0/env v3.5.0+incompatible
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/golang/protobuf v1.4.0
	github.com/google/uuid v1.1.1
	github.com/jmoiron/sqlx v1.2.0
	github.com/lib/pq v1.3.0
	github.com/sirupsen/logrus v1.5.0
	golang.org/x/net v0.0.0-20200324143707-d3edc9973b7e // indirect
	golang.org/x/sys v0.0.0-20200413165638-669c56c373c4 // indirect
	golang.org/x/text v0.3.2 // indirect
	google.golang.org/genproto v0.0.0-20200413115906-b5235f65be36 // indirect
	google.golang.org/grpc v1.28.1
	google.golang.org/protobuf v1.21.0
)
