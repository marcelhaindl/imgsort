# Default target: build and test
all: build test

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

# Clean the binary
clean:
	@echo "Cleaning..."
	@rm -f imgsort

.PHONY: all build run test clean
