package main

import (
	"database/sql"
	"github.com/spf13/viper"
	"strconv"
	"github.com/zulkan/rg-dashboard/rg-dashboard/usecase"
	"github.com/zulkan/rg-dashboard/rg-dashboard/delivery/http"
	_ "github.com/mattn/go-sqlite3"


	"fmt"
	"log"
	"os"
)

func main() {
	//init viper to read env
	_ = viper.New()

	// define http handlers

	port, err := strconv.Atoi(os.Getenv("PORT"))
	if err != nil {
		port = 3001
	}

	db, err := sql.Open("sqlite3", "../db.sqlite")

	if err != nil {
		log.Println("Error opening db")
		log.Println(err)
		return
	}

	service := usecase.NewPackageUseCase(db)
	// start server
	fmt.Printf("Server is listening on %s...", port)
	err = http.NewHttpServer(port, service)
	if err != nil {
		log.Fatalf("unable to start server due: %v", err)
	}
}
