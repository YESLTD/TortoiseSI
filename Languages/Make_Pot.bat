@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

..\bin\release64\bin\ResText extract ..\bin\release64\bin\TortoiseShellLang.dll -useheaderfile TortoisePotHeader.txt Tortoise.pot

rem leave the next two lines commented. The msgremove tool changes the
rem sequence "\r\n" to "r\n" - removing the backslash before the r!!!
rem msgremove Tmp.pot -i ignore.po -o Tortoise.pot
rem del Tmp.pot

rem leave this line commented. I fear it destroys the asian .po files
rem FOR %%i in (*.po) do msgmerge --no-wrap -s %%i Tortoise.pot -o %%i

ENDLOCAL
goto :eof
