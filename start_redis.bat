@echo off
echo Starting redis...
set PATH=C:\server\redis;%PATH%
c:\server\RunHiddenConsole.exe C:\server\redis\redis-server C:\server\redis\redis.windows.conf