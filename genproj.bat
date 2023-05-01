@echo off
if exist %1\build\ (
	echo build folder not created. This directory already exists.
) else (
	md %1\build
)
pushd %1
if exist data\logs\ (
	echo logs folder not created. This directory already exists.
) else (
	md data\logs
)
popd
pushd %1
if exist src\ (
	echo src folder not created. This directory already exists
) else (
	md src
)
popd

if exist %1\data\logs\log.txt (
	echo log file already exists.
) else (
	type templates\log_template.txt >> %1\data\logs\log.txt
)

if exist %1\src\main.cpp (
	echo main file already exists.
) else (
	type templates\main_template.cpp >> %1\src\main.cpp
)
