# ThriveMind

ThriveMind is a flexible nutrition tracking and coaching platform that supports various tracking methods including calories, macros, and more. It includes a marketplace for connecting with nutrition coaches.

## Features

- Multiple tracking methods (calories, macros, keto, etc.)
- Coaching marketplace
- Flexible nutrition goals
- API-first design

## Getting Started

### Prerequisites

- Go 1.23+
- Docker
- Task
- Devbox

### Development Setup

1. Install development tools:
```bash
curl -fsSL https://get.jetpack.io/devbox | bash
task devbox:setup
```

2. Set up the development environment:
```bash
task dev:setup
```

3. Start the development server:
```bash
task dev:start
```

### Available Commands

- `thrivemind serve`: Start the API server
- `thrivemind migrate up`: Run database migrations
- `thrivemind migrate down`: Rollback migrations
- `thrivemind version`: Display version information

### Development Commands

- `task build`: Build the application
- `task test`: Run tests
- `task lint`: Run linters
- `task dev:live`: Start development server with hot reload

## Project Structure

```
.
├── cmd/                  # Command line interfaces
│   └── thrivemind/      # Main application entry
├── internal/            # Internal packages
│   ├── auth/           # Authentication
│   ├── cmd/            # CLI commands
│   ├── config/         # Configuration
│   ├── handlers/       # HTTP handlers
│   ├── middleware/     # HTTP middleware
│   ├── migrations/     # Database migrations
│   ├── models/         # Domain models
│   └── store/          # Data storage
└── pkg/                # Public packages
```

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Built with [Chi Router](https://github.com/go-chi/chi)
- Database migrations with [golang-migrate](https://github.com/golang-migrate/migrate)
- CLI powered by [Cobra](https://github.com/spf13/cobra)