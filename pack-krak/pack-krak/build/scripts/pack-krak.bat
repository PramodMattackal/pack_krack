@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  pack-krak startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and PACK_KRAK_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\getting-started-0.1.0.jar;%APP_HOME%\lib\spring-boot-starter-web-1.0.1.RELEASE.jar;%APP_HOME%\lib\aws-java-sdk-dynamodb-1.10.47.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.0.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-1.0.1.RELEASE.jar;%APP_HOME%\lib\spring-web-4.0.3.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.0.3.RELEASE.jar;%APP_HOME%\lib\aws-java-sdk-s3-1.10.47.jar;%APP_HOME%\lib\aws-java-sdk-core-1.10.47.jar;%APP_HOME%\lib\tomcat-embed-core-7.0.52.jar;%APP_HOME%\lib\tomcat-embed-el-7.0.52.jar;%APP_HOME%\lib\tomcat-embed-logging-juli-7.0.52.jar;%APP_HOME%\lib\spring-boot-1.0.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.0.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.0.1.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.13.jar;%APP_HOME%\lib\spring-aop-4.0.3.RELEASE.jar;%APP_HOME%\lib\spring-beans-4.0.3.RELEASE.jar;%APP_HOME%\lib\spring-context-4.0.3.RELEASE.jar;%APP_HOME%\lib\spring-core-4.0.3.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.0.3.RELEASE.jar;%APP_HOME%\lib\aws-java-sdk-kms-1.10.47.jar;%APP_HOME%\lib\commons-logging-1.1.3.jar;%APP_HOME%\lib\httpclient-4.3.6.jar;%APP_HOME%\lib\joda-time-2.8.1.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.6.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.6.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.6.jar;%APP_HOME%\lib\logback-classic-1.1.2.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\httpcore-4.3.3.jar;%APP_HOME%\lib\commons-codec-1.6.jar;%APP_HOME%\lib\slf4j-api-1.7.6.jar;%APP_HOME%\lib\logback-core-1.1.2.jar;%APP_HOME%\lib\jackson-databind-2.5.3.jar;%APP_HOME%\lib\jackson-annotations-2.5.0.jar;%APP_HOME%\lib\jackson-core-2.5.3.jar

@rem Execute pack-krak
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %PACK_KRAK_OPTS%  -classpath "%CLASSPATH%" com.packkrak.app.init.PackKrakAppIntializer %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable PACK_KRAK_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%PACK_KRAK_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega