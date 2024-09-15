@echo off 
for %1 in (%windir%\system32\*.dll) do regsvr32.exe /s %1