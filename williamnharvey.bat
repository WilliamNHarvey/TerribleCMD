@echo off
cls
title WilliamNHarvey
set NUM=0123456789ABCDEF
SET /A first=%RANDOM% * 16 / 32768 + 1
SET /A second=%RANDOM% * 16 / 32768 + 1
for /l %%i in (%first%,1,%first%) do (
  call set bit=%%NUM:~%%i,1%%	
)
for /l %%i in (%second%,1,%second%) do (
  call set bat=%%NUM:~%%i,1%%	
)
for %%x in (%bit%) do ( 
    for %%y in (%bat%) do (
        color %%x%%y
    )
)
cd %HOMEPATH%
echo.
:reset
set "cmd="
set /p "cmd=%cd%>"
%cmd%
echo.
SET /A first=%RANDOM% * 16 / 32768 + 1
SET /A second=%RANDOM% * 16 / 32768 + 1
for /l %%i in (%first%,1,%first%) do (
  call set bit=%%NUM:~%%i,1%%	
)
for /l %%i in (%second%,1,%second%) do (
  call set bat=%%NUM:~%%i,1%%	
)
for %%x in (%bit%) do ( 
    for %%y in (%bat%) do (
        color %%x%%y
    )
)
goto reset