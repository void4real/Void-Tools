@echo off

:: Set the Python version
set "PYTHON_VERSION=3.11.5"
set "PYTHON_URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-amd64.exe"
set "PYTHON_EXE=python-installer.exe"

:: Download the specified version of Python
curl -L -o %PYTHON_EXE% %PYTHON_URL%

:: Install Python
start /wait %PYTHON_EXE% /quiet /passive InstallAllUsers=0 PrependPath=1 Include_test=0 Include_pip=1 Include_doc=0

:: Delete the installer
del %PYTHON_EXE%



color a1
echo [-] installing module ...

python -m pip install pkg
python.exe -m pip install --upgrade pip
python -m ensurepip --upgrade


