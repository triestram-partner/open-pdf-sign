@echo off
setlocal
set JAVA_HOME=C:\prog\jdk\17\x64\jdk-17.0.5+8
set PATH=C:\prog\jdk\17\x64\jdk-17.0.5+8\bin;%PATH%
java -jar target\openpdfsign-0.0.0-dev.162.dirty+d5dbc88e-jar-with-dependencies.jar %*
endlocal