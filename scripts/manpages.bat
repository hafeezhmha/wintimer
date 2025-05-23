@echo off
if exist manpages rmdir /s /q manpages
mkdir manpages
go run . man > manpages\WinTimer.1
:: Note: Windows doesn't have gzip by default, so we're just creating the uncompressed file
:: If gzip is available (e.g., from Git for Windows), uncomment the line below
:: powershell -Command "go run . man | gzip -c > manpages\WinTimer.1.gz" 