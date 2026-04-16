package main

import (
	"fmt"
	"sso/internal/config"
)

func main() {
	cfg := config.MustLoad()
	fmt.Println(cfg)

	// TODO: логгер

	// TODO: инициализация приложения

	// TODO: запуск gRPC приложения
}
