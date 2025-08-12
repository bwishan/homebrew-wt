# Homebrew Tap for wt

This is the official Homebrew tap for [wt](https://github.com/bwishan/wt), a minimalist git worktree manager.

## Quick Installation

```bash
brew tap bwishan/wt
brew install wt
```

## What is wt?

`wt` is a minimalist command-line interface for git worktree management, designed to work like standard git commands with subcommands and clean output formatting.

### Key Features

- **CLI-first**: Clean command-line interface like `git`
- **Git-like**: Familiar subcommand structure (`wt list`, `wt new`, `wt rm`)
- **Minimal**: Clean, readable output with good alignment
- **Fast**: Quick operations, no interactive menus unless needed
- **Safe**: Built-in safety checks for uncommitted changes

### Core Commands

- `wt list` (alias: `ls`) - Display all worktrees in a clean table format
- `wt new [branch_name]` - Create new worktree with automatic directory naming
- `wt rm [branch_name]` - Remove worktree by branch name with safety checks
- `wt sync` - Sync worktrees with remote
- `wt prune` - Remove stale worktree administrative files

## Installation Options

### Option 1: Via This Tap (Recommended)

```bash
# Add the tap
brew tap bwishan/wt

# Install wt
brew install wt

# Verify installation
wt --version
```

### Option 2: Direct Install

```bash
# Install directly without adding tap
brew install bwishan/wt/wt
```

## Usage Examples

```bash
# List all worktrees
wt list

# Create a new feature branch worktree
wt new feat/user-dashboard

# Remove a worktree when done
wt rm feat/user-dashboard

# Sync all worktrees with remote
wt sync
```

## Updating

Get the latest version with:

```bash
brew upgrade wt
```

Or upgrade all your packages:

```bash
brew upgrade
```

## Uninstalling

```bash
# Remove wt
brew uninstall wt

# Optionally remove the tap
brew untap bwishan/wt
```

## Requirements

- **Python 3.8+** (automatically installed as dependency)
- **Git** (must be available in PATH)
- **macOS** or **Linux** (Windows via WSL)

## Troubleshooting

### Installation Issues

If you encounter permission or installation issues:

```bash
# Update Homebrew first
brew update

# Clean up any cached files
brew cleanup wt

# Reinstall
brew reinstall wt
```

### Formula Issues

If the formula seems outdated:

```bash
# Update tap
brew tap --repair

# Check for updates
brew outdated wt
```

## Alternative Installation Methods

If Homebrew doesn't work for you, see the [main repository](https://github.com/bwishan/wt) for other installation options:

- Direct download from GitHub releases
- Manual installation script
- Building from source

## Contributing

This tap is automatically maintained and synchronized with releases from the main [wt repository](https://github.com/bwishan/wt).

For bug reports, feature requests, or contributions to the tool itself, please visit the main repository.

## License

This tap follows the same MIT license as the main wt project.

---

**Links:**
- [Main Repository](https://github.com/bwishan/wt)
- [Releases](https://github.com/bwishan/wt/releases)
- [Issues](https://github.com/bwishan/wt/issues)
- [Documentation](https://github.com/bwishan/wt/blob/develop/README.md)