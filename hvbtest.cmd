@echo off
setlocal
set JAVA_HOME=D:\prog\jdk\21\x64\jdk-21.0.8+9
set PATH=D:\prog\jdk\21\x64\jdk-21.0.8+9\bin;%PATH%
for %%i in (target\openpdfsign-*-with-dependencies.jar) do java -jar %%i %*
endlocal