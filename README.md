# homebrew-ccswitch

Homebrew tap for [ccswitch](https://github.com/gautamkumar7atgit/ClaudeCodeSwitch) — a macOS CLI tool to switch between multiple Claude Code OAuth accounts.

## Install

```bash
brew tap gautamkumar7atgit/ccswitch
brew install ccswitch
```

## First Run

```bash
ccswitch init
```

This imports your existing Claude Code credentials, saves them as a named profile, and starts the background sync daemon.

## Usage

```bash
ccswitch add <name>       # Save current Keychain credentials as a profile
ccswitch use <name>       # Switch to a profile
ccswitch list             # List all profiles
ccswitch remove <name>    # Remove a profile
ccswitch status           # Show active profile and daemon status
```

## More

Full documentation and source: [github.com/gautamkumar7atgit/ClaudeCodeSwitch](https://github.com/gautamkumar7atgit/ClaudeCodeSwitch)
