# Contributing to Electron Chat App

Thank you for your interest in contributing to the Electron Chat App! This document provides guidelines for contributing to this project.

## Getting Started

1. Fork the repository
2. Clone your fork locally
3. Install dependencies: `npm install`
4. Create a new branch for your feature
5. Make your changes
6. Test your changes: `npm start`
7. Commit your changes with a descriptive message
8. Push to your fork and submit a pull request

## Development Guidelines

### Code Style
- Use consistent indentation (2 spaces)
- Follow JavaScript best practices
- Add comments for complex logic
- Keep functions small and focused

### Testing
- Test your changes locally before submitting
- Ensure the app builds successfully: `npm run build`
- Test on different platforms if possible

### Commit Messages
Use clear, descriptive commit messages:
- `feat: add new chat feature`
- `fix: resolve window sizing issue`
- `docs: update README with new instructions`

## Building for Distribution

### Prerequisites
- Node.js 18 or higher
- npm or yarn

### Build Commands
```bash
# Build for current platform
npm run build

# Build for specific platforms
npm run build:win    # Windows
npm run build:mac    # macOS
npm run build:linux  # Linux

# Package without distribution
npm run pack
```

## Release Process

1. Update version in `package.json`
2. Create a git tag: `git tag v1.0.0`
3. Push the tag: `git push origin v1.0.0`
4. GitHub Actions will automatically build and release

## Issues and Bug Reports

When reporting issues:
- Use the issue template
- Provide detailed steps to reproduce
- Include your operating system and version
- Add screenshots if relevant

## Feature Requests

When suggesting features:
- Explain the use case
- Describe the expected behavior
- Consider implementation complexity
- Check if it aligns with project goals

## Questions?

Feel free to open an issue for questions or discussions about the project.
