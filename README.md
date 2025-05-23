# WinTimer

```
 █     █░ ██▓ ███▄    █ ▄▄▄█████▓ ██▓ ███▄ ▄███▓▓█████  ██▀███  
▓█░ █ ░█░▓██▒ ██ ▀█   █ ▓  ██▒ ▓▒▓██▒▓██▒▀█▀ ██▒▓█   ▀ ▓██ ▒ ██▒
▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒▒ ▓██░ ▒░▒██▒▓██    ▓██░▒███   ▓██ ░▄█ ▒
░█░ █ ░█ ░██░▓██▒  ▐▌██▒░ ▓██▓ ░ ░██░▒██    ▒██ ▒▓█  ▄ ▒██▀▀█▄  
░░██▒██▓ ░██░▒██░   ▓██░  ▒██▒ ░ ░██░▒██▒   ░██▒░▒████▒░██▓ ▒██▒
░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒   ▒ ░░   ░▓  ░ ▒░   ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
  ▒ ░ ░   ▒ ░░ ░░   ░ ▒░    ░     ▒ ░░  ░      ░ ░ ░  ░  ░▒ ░ ▒░
  ░   ░   ▒ ░   ░   ░ ░   ░       ▒ ░░      ░      ░     ░░   ░ 
    ░     ░           ░           ░         ░      ░  ░   ░     
```

A Windows countdown timer with progress bar visualization.

*Inspired by [@bashbunni](https://github.com/bashbunni)*

## Building from Source

1. Make sure you have Go installed on your Windows machine. You can download it from [golang.org](https://golang.org/dl/).

2. Clone the repository and navigate to the project directory

3. Build the application:
   ```
   go build -o WinTimer.exe .
   ```

## Generating Man Pages

To generate man pages on Windows:

1. Using Command Prompt:
   ```
   scripts\manpages.bat
   ```

2. Using PowerShell:
   ```
   .\scripts\manpages.ps1
   ```

## Generating Shell Completions

To generate shell completions on Windows:

1. Using Command Prompt:
   ```
   scripts\completions.bat
   ```

2. Using PowerShell:
   ```
   .\scripts\completions.ps1
   ```

## Usage

WinTimer provides a visual countdown with a progress bar:

```
WinTimer.exe <duration>
WinTimer.exe -n <name> <duration>
WinTimer.exe --help
```

Examples:
```
WinTimer.exe 5s         # Run a 5-second timer
WinTimer.exe 2m         # Run a 2-minute timer
WinTimer.exe -n "Coffee" 3m  # Run a 3-minute timer labeled "Coffee"
WinTimer.exe --format 24h 1m  # Use 24-hour time format
```

It is possible to pass a time unit for `<duration>`.
Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".
If no unit is passed, it defaults to seconds ("s").

## Notes

- The shell completion files are primarily useful if you're using Git Bash, WSL, or other Unix-like environments on Windows
- Man pages are not typically used on Windows, but are generated for compatibility with Unix-like environments

## Installation

After building or downloading WinTimer.exe, you might want to:

1. Add the directory containing `WinTimer.exe` to your PATH environment variable
2. Create a shortcut to `WinTimer.exe` in a convenient location

## Acknowledgments

Special thanks to [@bashbunni](https://github.com/bashbunni) for the inspiration behind this project.

This project utilizes the wonderful terminal UI libraries from [Charm](https://github.com/charmbracelet), where bashbunni contributes:
- [bubbletea](https://github.com/charmbracelet/bubbletea) - A powerful TUI framework
- [lipgloss](https://github.com/charmbracelet/lipgloss) - Style definitions for terminal layouts
- [bubbles](https://github.com/charmbracelet/bubbles) - TUI components 