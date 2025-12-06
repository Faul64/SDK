echo off

rem Visual Studio

del /Q .vs
rd /S /Q .vs
del *.sln

rem Visual Studio Code

del /Q .vscode
rd /S /Q .vscode
del *.code-workspace

rem Unreal Engine

del /Q Binaries
rd /S /Q Binaries
rem Build - build settings
: del /Q Build
: rd /S /Q Build
rem Intermediate - temporary files generated when you compile your code
del /Q Intermediate
rd /S /Q Intermediate
del /Q DerivedDataCache
rd /S /Q DerivedDataCache
del /Q Script
rd /S /Q Script

rem  Saved data - crashes, logs, etc.
if exist Saved (
    del /Q Saved\Crashes 2>nul
    rd /S /Q Saved\Crashes 2>nul
    del /Q Saved\Logs 2>nul
    rd /S /Q Saved\Logs 2>nul
)