@echo off

:: Check for Python Installation
python --version 2>NUL
if errorlevel 1 goto errorNoPython

:: Reaching here means Python is installed.
:: Run the script ::
python .\embed.py %*
pause

:: Once done, exit the batch file -- skips executing the errorNoPython section
goto:eof

:errorNoPython
echo.
echo Error^: Python not installed or not in ^%PATH^% environment variable
:: exit 1

