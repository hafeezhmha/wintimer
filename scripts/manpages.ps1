# PowerShell script for generating man pages
if (Test-Path -Path "manpages") {
    Remove-Item -Path "manpages" -Recurse -Force
}
New-Item -Path "manpages" -ItemType Directory

# Generate the man page
$manpage = & go run . man
$manpage | Out-File -FilePath "manpages\WinTimer.1" -Encoding utf8

# If you have gzip available (e.g., from Git for Windows), uncomment the line below
# $manpage | & gzip -c | Set-Content -Path "manpages\WinTimer.1.gz" -Encoding Byte 