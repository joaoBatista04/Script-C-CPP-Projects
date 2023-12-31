@echo off
REM CHECKING IF THE USER ENTERED THE CORRECT NUMBER OF FLAGS
if [%1] == [] goto :blank

REM CHECKING IF THE USER ENTERED THE CLEANING OPTION
if "%1" == "-c" goto :clean
if "%1" == "-C" goto :clean

REM CHECKING IF THE USER ENTERED THE PROJECT CREATION OPTION
if "%1" == "-d" goto :create
if "%1" == "-D" goto :create

:blank
    echo "Missing flag (-d to create and download files and -c to clean workspace)"
    goto :done

:clean
    REM copy .\CCPPProjects.bat ..
    REM rmdir /s .
    REM move ..\CCPPProjects.bat .

:done