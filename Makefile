.PHONY: run
run:
	go run main.go

.PHONY: build
build: lint test
	go build

.PHONY: test
test:
	go test -race ./...

.PHONY: lint
lint:
	go fmt ./...
	go vet ./...
	staticcheck ./...

.PHONY: clean
clean:
	go clean
