@echo off
echo Starting memcached...
set PATH=C:\server\memcached;%PATH%
c:\server\RunHiddenConsole.exe C:\server\memcached\memcached.exe -p 11211 -m 512 start -vv >> C:\server\logs\memcache\memcache.log