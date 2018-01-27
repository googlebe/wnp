@echo off
REM Windows 下无效
set PHP_FCGI_CHILDREN=5

REM 每个进程处理的最大请求数，或设置为 Windows 环境变量  
set PHP_FCGI_MAX_REQUESTS=1000

echo Starting PHP FastCGI...
set PATH=C:\server\php;%PATH%
c:\server\RunHiddenConsole.exe C:\server\php\php-cgi.exe -b 127.0.0.1:9000 -c C:\server\php\php.ini

echo Starting Nginx...
c:\server\RunHiddenConsole.exe C:\server\nginx\nginx.exe -p C:\server\nginx
