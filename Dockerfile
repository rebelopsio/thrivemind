# Build stage
FROM golang:1.21-alpine AS builder

WORKDIR /app

# Install build dependencies
RUN apk add --no-cache git

# Copy go mod files
COPY go.mod go.sum ./
RUN go mod download

# Copy source code
COPY . .

# Build the application
RUN CGO_ENABLED=0 GOOS=linux go build -o /app/bin/thrivemind ./cmd/api

# Final stage
FROM alpine:3.19

WORKDIR /app

# Install runtime dependencies
RUN apk add --no-cache ca-certificates tzdata

# Copy binary from builder
COPY --from=builder /app/bin/thrivemind .
COPY --from=builder /app/internal/migrations ./internal/migrations
COPY --from=builder /app/config.yaml ./config.yaml

# Expose port
EXPOSE 8080

# Run the application
CMD ["./thrivemind"]