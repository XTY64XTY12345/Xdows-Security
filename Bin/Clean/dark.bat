@echo off

echo.
cls
color  0F
mode con cols=80 lines=30
title Xdows Security 垃圾清理
echo;
echo     正在初始化...
cls
echo.
call :x 09 "     垃圾清理"
echo.
echo      启动 Xdows Security 垃圾清理功能成功！（仅能清除系统盘部分垃圾）
echo      此脚本会删除固定后缀的文件（如 .old）
echo      如果误删文件后，作者不负任何责任（包括法律责任及其它责任）！
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
call :x 09 "                                               继续[N]       退出[E]"
echo.
echo.
choice /C NE /M "等待按键"
if %errorlevel%==1 (

	cls
        echo.
        call :x 09 "     请稍后"
        echo.
        echo      清理临时文件中（下面是其日志）
        del /f /s /q %systemdrive%\*.tmp > nul
        del /f /s /q %systemdrive%\*._mp  > nul
        rd /s /q %windir%\temp & md %windir%\temp > nul
        del /f /s /q "%userprofile%\local settings\temp\*.*"  > nul

	cls
        echo.
        call :x 09 "     请稍后"
        echo.
        echo      清理缓存完成
        echo      清理日志文件、使用记录中（下面是其日志）
        del /f /s /q %windir%\prefetch\*.*   > nul
        del /f /s /q %systemdrive%\*.log  > nul
        del /f /s /q %systemdrive%\*.gid  > nul
        del /f /s /q %systemdrive%\*.chk  > nul

	cls
        echo.
        call :x 09 "     请稍后"
        echo.
        echo      清理缓存完成
        echo      清理日志文件、使用记录完成
        echo      清理备份文件中（下面是其日志）
        del /f /s /q %windir%\*.bak > nul
        del /f /s /q %systemdrive%\*.old > nul

	cls
        echo.
        call :x 09 "     请稍后"
        echo.
        echo      清理缓存完成
        echo      清理日志文件、使用记录完成
        echo      清理备份文件完成
        echo      清理回收站、缓存中（下面是其日志）
        del /f /s /q %systemdrive%\$recycle.bin\*.* > nul
        rd /s /q %windir%\SoftwareDistribution\Download & md %windir%\SoftwareDistribution\Download > nul
        del /f /q "%userprofile%\AppData\Roaming\Microsoft\Windows\Cookies\*.*" > nul
        del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*" > nul
        del /f /s /q "%userprofile%\AppData\Roaming\Microsoft\Windows\Recent\*.*"  > nul

	cls
        echo.
        call :x 09 "     完成"
        echo.
        echo      清除系统垃圾完成！
        echo      按任意键退出&pause>nul
)
:x 
echo. >%2&findstr /a:%1 . %2*&del %2 
