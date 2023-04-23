@echo off
md %1\build
pushd %1
md data\logs
popd
pushd %1
md src
popd