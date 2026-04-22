STORAGE_PATH=./storage/sso.db
MIGRATIONS_PATH=./migrations

run:
	go run cmd/sso/main.go

migrate:
	go run ./cmd/migrator/main.go --storage-path=$(STORAGE_PATH) --migrations-path=$(MIGRATIONS_PATH)

build:
	go build -o bin/sso cmd/sso/main.go
	go build -o bin/migrator cmd/migrator/main.go

test:
	go test ./...

.PHONY: run migrate build test
