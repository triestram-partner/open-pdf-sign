@echo off
setlocal
set JAVA_HOME=C:\prog\jdk\17\x64\jdk-17.0.5+8
set PATH=C:\prog\jdk\17\x64\jdk-17.0.5+8\bin;%PATH%
for %%i in (target\openpdfsign-*-with-dependencies.jar) do java -jar %%i %*
endlocal