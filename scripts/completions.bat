@echo off
if exist completions rmdir /s /q completions
mkdir completions
go build -o WinTimer.exe .
for %%s in (bash zsh fish) do (
    WinTimer.exe completion %%s > completions\WinTimer.%%s
)