@echo off
set THIRD=D:
cd /d %~dp0
call:echoc 0e "NOTE you must run this script as admin"
echo current path %cd%
echo press ctrl+c to exit/or just close window

mklink /D "_build" "D:\works\erlang\advanced\_build"