@echo off

rem �����ŃC���X�g�[���������Ȃ��ꍇ�́A���s�̃R����(:)���O���B
:goto END

rem ===========================================

rem .lib�t�@�C���̃C���X�g�[����p�X���w��
set SKSE_LIB=%USERPROFILE%\lib\libSKSE

rem .h�t�@�C���̃C���X�g�[����p�X���w��
set SKSE_INC=%USERPROFILE%\include\libSKSE

rem ===========================================

if not exist "%SKSE_LIB%" (
    mkdir "%SKSE_LIB%"
)

copy %2 "%SKSE_LIB%"

cd %1
call install.bat

:END
