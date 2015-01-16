@echo off
@echo .....

SET RUPE_DESENV_PATH="C:\Users\t0085324\workspace\tjmg\netbeans\rupe\fontes\app"
SET SICC_DESENV_PATH="C:\Users\t0085324\workspace\tjmg\netbeans\sicc\trunk\fontes\app"
SET JBOSS_HOME="C:\Users\t0085324\workspace\tjmg\servidores\jboss-5.1.0.GA"

 IF "%~1"=="-r" (
    echo Inicializando JBoss RUPE na porta 8080
    ant -f "%RUPE_DESENV_PATH%\BuildRupe\src\build-RUPE.xml" deploy
    RMDIR /s /q "%JBOSS_HOME%\server\rupe\tmp"
    RMDIR /s /q "%JBOSS_HOME%\server\rupe\work"
    cmd /c "%JBOSS_HOME%\bin\run.bat" "-c rupe"
 ) ELSE ( 
    echo Inicializando JBoss SICC na porta 8180
    ant -f "%SICC_DESENV_PATH%\build-base.xml" deploy
    RMDIR /s /q "%JBOSS_HOME%\server\sicc\tmp"
    RMDIR /s /q "%JBOSS_HOME%\server\sicc\work"
    cmd /c %JBOSS_HOME%\bin\run.bat -c sicc -Djboss.service.binding.set=ports-01
 )

rem SET JBOSS_HOME ""
