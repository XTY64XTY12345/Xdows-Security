@echo off

echo.
cls
color  0F
mode con cols=80 lines=30
title Xdows Security ��������
echo;
echo     ���ڳ�ʼ��...
cls
echo.
call :x 09 "     ��������"
echo.
echo      ���� Xdows Security ���������ܳɹ������������ϵͳ�̲���������
echo      �˽ű���ɾ���̶���׺���ļ����� .old��
echo      �����ɾ�ļ������߲����κ����Σ������������μ��������Σ���
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
call :x 09 "                                               ����[N]       �˳�[E]"
echo.
echo.
choice /C NE /M "�ȴ�����"
if %errorlevel%==1 (

	cls
        echo.
        call :x 09 "     ���Ժ�"
        echo.
        echo      ������ʱ�ļ��У�����������־��
        del /f /s /q %systemdrive%\*.tmp > nul
        del /f /s /q %systemdrive%\*._mp  > nul
        rd /s /q %windir%\temp & md %windir%\temp > nul
        del /f /s /q "%userprofile%\local settings\temp\*.*"  > nul

	cls
        echo.
        call :x 09 "     ���Ժ�"
        echo.
        echo      ���������
        echo      ������־�ļ���ʹ�ü�¼�У�����������־��
        del /f /s /q %windir%\prefetch\*.*   > nul
        del /f /s /q %systemdrive%\*.log  > nul
        del /f /s /q %systemdrive%\*.gid  > nul
        del /f /s /q %systemdrive%\*.chk  > nul

	cls
        echo.
        call :x 09 "     ���Ժ�"
        echo.
        echo      ���������
        echo      ������־�ļ���ʹ�ü�¼���
        echo      �������ļ��У�����������־��
        del /f /s /q %windir%\*.bak > nul
        del /f /s /q %systemdrive%\*.old > nul

	cls
        echo.
        call :x 09 "     ���Ժ�"
        echo.
        echo      ���������
        echo      ������־�ļ���ʹ�ü�¼���
        echo      �������ļ����
        echo      �������վ�������У�����������־��
        del /f /s /q %systemdrive%\$recycle.bin\*.* > nul
        rd /s /q %windir%\SoftwareDistribution\Download & md %windir%\SoftwareDistribution\Download > nul
        del /f /q "%userprofile%\AppData\Roaming\Microsoft\Windows\Cookies\*.*" > nul
        del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*" > nul
        del /f /s /q "%userprofile%\AppData\Roaming\Microsoft\Windows\Recent\*.*"  > nul

	cls
        echo.
        call :x 09 "     ���"
        echo.
        echo      ���ϵͳ������ɣ�
        echo      ��������˳�&pause>nul
)
:x 
echo. >%2&findstr /a:%1 . %2*&del %2 
