@echo off
echo ....
echo Parando JBoss

SET JBOSS_HOME="C:\Users\t0085324\workspace\tjmg\servidores\jboss-5.1.0.GA"


IF "%~1"=="-r" (
   echo Parando Rupe que executa na porta 8080 ...
   %JBOSS_HOME%\bin\shutdown.bat -s jnp://localhost:1099 -S
 ) ELSE (  
   echo Parando Sicc que executa na porta 8180 ...
   %JBOSS_HOME%\bin\shutdown.bat -s jnp://localhost:1199 -S
 )
