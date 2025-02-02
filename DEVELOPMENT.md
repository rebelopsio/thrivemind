# Development Guidelines

## Architecture

ThriveMind follows a clean architecture approach with clear separation of concerns:

```
cmd/          # Application entrypoints
├── thrivemind/   # CLI implementation
internal/     # Private application code
├── auth/     # Authentication
├── cmd/      # CLI commands
├── config/   # Configuration
├── handlers/ # HTTP handlers
├── models/   # Domain models
└── store/    # Data access
pkg/          # Public packages
```

## Code Organization

### Command Structure
- Commands live in `internal/cmd/`
- Each major feature has its own command package
- Commands follow Cobra's structure
- Keep command logic thin, delegate to appropriate packages

### Package Guidelines
- Keep packages focused and cohesive
- Avoid circular dependencies
- Use interfaces for flexibility
- Follow interface segregation principle

## Coding Style

### General
- Follow standard Go conventions
- Use `gofmt` for formatting
- Maximum line length of 100 characters
- Meaningful variable and function names
- Clear and concise comments

### Error Handling
- Use custom error types for domain-specific errors
- Wrap errors with context using `fmt.Errorf("... %w", err)`
- Handle all errors appropriately
- Don't ignore errors silently

### Testing
- Write unit tests for all packages
- Use table-driven tests where appropriate
- Mock external dependencies
- Aim for high test coverage
- Use meaningful test names

Example test structure:
```go
package example

func TestSomething(t *testing.T) {
    tests := []struct {
        name     string
        input    string
        expected string
        wantErr  bool
    }{
        {
            name:     "valid case",
            input:    "test",
            expected: "result",
            wantErr:  false,
        },
    }

    for _, tt := range tests {
        t.Run(tt.name, func(t *testing.T) {
            // Test implementation
        })
    }
}
```

### Database
- Use migrations for schema changes
- Write clear and concise SQL
- Use SQLC for type-safe queries
- Include appropriate indexes
- Consider query performance

### API Design
- Follow RESTful conventions
- Use consistent error responses
- Version APIs appropriately
- Document with examples
- Include appropriate validation

## Development Workflow

### Feature Development
1. Create a feature branch
2. Write tests first (TDD)
3. Implement the feature
4. Update documentation
5. Submit PR

### Code Review Process
- Review all changes
- Check test coverage
- Verify documentation
- Consider performance implications
- Look for security issues

### Commit Messages
Follow conventional commits:
```
feat(scope): add new feature
fix(scope): fix specific issue
docs(scope): update documentation
test(scope): add tests
refactor(scope): code improvement
```

## Tools and Dependencies

### Required Tools
- Go 1.23.4 or later
- Task
- Docker
- PostgreSQL 15
- SQLC
- Migrate
- Air (for hot reload)

### Development Commands
```bash
# Setup development environment
task dev:setup

# Start development server
task dev:start

# Run tests
task test

# Run linter
task lint

# Generate SQL code
task sqlc

# Run migrations
task migrate:up
```

## Security Guidelines

- Use PASETO for authentication
- Always validate input
- Use prepared statements
- Handle sensitive data carefully
- Regular security updates
- Audit dependencies

## Performance Considerations

- Use appropriate indexes
- Consider query performance
- Profile when necessary
- Handle concurrent access
- Use connection pooling

## Documentation

- Keep README.md updated
- Document all APIs
- Include examples
- Update CHANGELOG.md
- Write clear comments