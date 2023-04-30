@echo off
md %1\build
pushd %1
md data\logs
popd
pushd %1
md src
popd

type templates\log_template.txt >> %1\data\logs\log.txt
type templates\main_template.cpp >> %1\src\main.cpp