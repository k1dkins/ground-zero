@echo off
md %1\build
pushd %1
md data\logs
popd
pushd %1
md src
popd

echo %1 log>%1\data\logs\log.txt
echo #include>%1\src\main.cpp