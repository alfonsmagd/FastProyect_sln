@echo off
setlocal

:: Define file names
set MAIN_CPP=main.cpp
set CMAKE_LISTS=CMakeLists.txt
:: Ask for the project name
set /p PROJECT_NAME=Enter the project name: 
set SOLUTION_NAME=%PROJECT_NAME%Solution

:: Create directories
mkdir %PROJECT_NAME%
cd %PROJECT_NAME%

:: Create empty main.cpp file
echo. > %MAIN_CPP%

:: Create empty CMakeLists.txt file
echo. > %CMAKE_LISTS%

:: Fill CMakeLists.txt with the desired content
echo cmake_minimum_required(VERSION 3.10) > %CMAKE_LISTS%
echo project(%PROJECT_NAME%) >> %CMAKE_LISTS%
echo. >> %CMAKE_LISTS%
echo set(CMAKE_CXX_STANDARD 17) >> %CMAKE_LISTS%
echo. >> %CMAKE_LISTS%
echo add_executable(%PROJECT_NAME% %MAIN_CPP%) >> %CMAKE_LISTS%

mkdir build
cd build
cmake ..  :: Change the generator according to the installed version of Visual Studio

cd build 

:: Open the solution in Visual Studio
start %PROJECT_NAME%.sln

:: Finish
echo Project %PROJECT_NAME% created and opened successfully in Visual Studio.
pause
