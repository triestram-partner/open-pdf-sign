@echo off
setlocal
set JAVA_HOME=C:\prog\jdk\17\x64\jdk-17.0.5+8
set PATH=%JAVA_HOME%\bin;%PATH%
del /Q %~dp0target\*.jar
call c:\prog\maven-3.8.5/bin/mvn.cmd package
endlocal
