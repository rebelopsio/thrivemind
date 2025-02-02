# Contributing to ThriveMind

Thank you for considering contributing to ThriveMind! This document provides guidelines and instructions for contributing.

## Development Process

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Run tests and linters
   ```bash
   task test
   task lint
   ```
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to your branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

## Pull Request Guidelines

- Update the README.md with details of changes to the interface, if applicable
- Update the CHANGELOG.md with a note describing your changes
- Ensure any install or build dependencies are removed before the end of the layer
- PRs should target the `main` branch

### PR Description Template

```markdown
## Description
Clear and concise description of the changes

## Type of Change
- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] This change requires a documentation update

## Testing Description
Describe the tests you ran and how to reproduce

## Checklist
- [ ] My code follows the style guidelines of this project
- [ ] I have performed a self-review of my own code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings
- [ ] I have added tests that prove my fix is effective or that my feature works
- [ ] New and existing unit tests pass locally with my changes
```

## Development Setup

1. Install prerequisites:
    - Go 1.23.4 or later
    - Docker
    - Task

2. Setup development environment:
   ```bash
   task dev:setup
   ```

3. Create a branch for local development:
   ```bash
   git checkout -b name-of-your-bugfix-or-feature
   ```

4. Make your changes and test them:
   ```bash
   task test
   task lint
   ```

## Code Style

- Follow standard Go conventions
- Use `gofmt` for formatting
- Follow project structure conventions
- Write meaningful commit messages
- Add tests for new features

## Testing

- Write unit tests for new code
- Ensure all tests pass before submitting PR
- Include integration tests where appropriate
- Document test cases and scenarios

## Documentation

- Update documentation for new features
- Include code comments where necessary
- Update API documentation if endpoints change
- Keep README.md current

## Questions?

Feel free to open an issue for clarification or help.

Thank you for your contribution!