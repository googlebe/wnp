@echo off
REM Windows ����Ч
set PHP_FCGI_CHILDREN=5

REM ÿ�����̴���������������������Ϊ Windows ��������  
set PHP_FCGI_MAX_REQUESTS=1000

echo Starting PHP FastCGI...
set PATH=C:\server\php;%PATH%
c:\server\RunHiddenConsole.exe C:\server\php\php-cgi.exe -b 127.0.0.1:9000 -c C:\server\php\php.ini

echo Starting Nginx...
c:\server\RunHiddenConsole.exe C:\server\nginx\nginx.exe -p C:\server\nginx
