echo off
rem SET section start
rem **** Attention: Do not use spaces before and after the equality sign '=' **** 
set STUDIOPYTHON=F:\n-blocks\studio\studio2.0_experimental\python\python.exe
set TRANSLATOR=F:\n-blocks\studio\studio2.0_experimental\nblocksStudio.py
set DESIGNPATH=F:\prj_soft\mbed-studio\ascii-03\design.nbls
set EXPORTPATH=F:\prj_soft\mbed-studio\12D_MotorTest
set TARGETNAME= .
rem SET section end
echo on

if exist F:\prj_soft\mbed-studio\12D_MotorTest\nlib\ rd F:\prj_soft\mbed-studio\12D_MotorTest\nlib\ /s/q
if exist F:\prj_soft\mbed-studio\12D_MotorTest\main.cpp rd F:\prj_soft\mbed-studio\12D_MotorTest\main.cpp /s/q

%STUDIOPYTHON%  %TRANSLATOR%  --import altium --netlist .\studio.NET --parameters .\studio.csv --output %EXPORTPATH% --name %TARGETNAME% --verbose 






