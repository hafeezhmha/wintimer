# PowerShell script for generating shell completions
if (Test-Path -Path "completions") {
    Remove-Item -Path "completions" -Recurse -Force
}
New-Item -Path "completions" -ItemType Directory

# Build the timer executable
& go build -o WinTimer.exe .

# Generate completions for different shells
foreach ($shell in @("bash", "zsh", "fish")) {
    & .\WinTimer.exe completion $shell | Out-File -FilePath "completions\WinTimer.$shell" -Encoding utf8
} 