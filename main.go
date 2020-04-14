package main

import (
	"github.com/ivansukach/King-of-the-Hill/protocol"
	"github.com/ivansukach/King-of-the-Hill/repositories/claims"
	"github.com/ivansukach/King-of-the-Hill/repositories/refreshToken"
	"github.com/ivansukach/King-of-the-Hill/repositories/users"
	"github.com/ivansukach/King-of-the-Hill/server"
	"github.com/ivansukach/King-of-the-Hill/service"
	"github.com/jmoiron/sqlx"
	log "github.com/sirupsen/logrus"
	"google.golang.org/grpc"
	"net"
)

func main() {
	db, err := sqlx.Connect("postgres", "user=su password=su dbname=pokemons sslmode=disable")
	rpsClaims := claims.NewRepositoryOfClaims(db)
	rpsUsers := users.New(db)
	rpsRefreshTokens := refreshToken.NewRefreshTokenRepository(db)
	log.Info("GRPC-server started")
	s := grpc.NewServer()
	as := service.New(rpsUsers, rpsClaims, rpsRefreshTokens)

	srv := server.New(as)
	protocol.RegisterAuthServiceServer(s, srv)
	listener, err := net.Listen("tcp", ":1325")
	s.Serve(listener)
	if err != nil {
		log.Error(err)
	}

	defer db.Close()
}
