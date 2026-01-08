# Serverless DNA Homebrew Tap

This is the official Homebrew tap for [Serverless DNA](https://github.com/walmsles/serverless-dna) tools and utilities.

## Available Packages

### run-mcp
A cross-platform binary for running MCP (Model Context Protocol) servers in containers.

## Installation

```bash
# Add the tap
brew tap walmsles/serverless-dna

# Install run-mcp
brew install run-mcp
```

## run-mcp Usage

After installation, you can use `run-mcp` to run MCP servers in containers:

```bash
# Run a Node.js MCP server
run-mcp node /path/to/server.js

# Run a Python MCP server  
run-mcp python /path/to/server.py

# Run with uvx (Python package runner)
run-mcp uvx mcp-server-sqlite --db-path /data/db.sqlite

# Show help
run-mcp --help

# Show version
run-mcp --version
```

## run-mcp Features

- **Cross-platform**: Works on macOS and Linux
- **Auto-detection**: Automatically detects Docker, Podman, nerdctl, or Finch
- **Language inference**: Detects Node.js or Python from commands
- **Secure environment passthrough**: Allowlist-based environment variable filtering
- **Volume management**: Persistent home directories for MCP servers
- **Signal handling**: Proper process management and cleanup

## Requirements

- A container runtime (Docker, Podman, nerdctl, or Finch)
- macOS 10.15+ or Linux

## Documentation

For full documentation, visit the [main repository](https://github.com/walmsles/serverless-dna).

## Issues

Please report issues in the [main repository](https://github.com/walmsles/serverless-dna/issues).