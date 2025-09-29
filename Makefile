# Default target: build, test, and lint
all: build test lint

# Build the application
build:
	@echo "Building..."
	@go build -o bin/imgsort cmd/imgsort/main.go

# Run the application
run:
	@go run cmd/imgsort/main.go

# Test the application
test:
	@echo "Testing..."
	@go test ./... -v

# Lint the code
lint:
	@echo "Linting..."
	@golangci-lint run

# Clean the binary
clean:
	@echo "Cleaning..."
	@rm -f bin/imgsort

.PHONY: all build run test clean
