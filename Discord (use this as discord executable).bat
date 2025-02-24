@echo off
DEL /F/Q/S "%HOMEPATH%\AppData\Roaming\discord\Cache"
DEL /F/Q/S "%HOMEPATH%\AppData\Roaming\discord\Code Cache"
DEL /F/Q/S "%HOMEPATH%\AppData\Roaming\discord\Crashpad"
DEL /F/Q/S "%HOMEPATH%\AppData\Roaming\discord\GPUCache"
DEL /F/Q/S "%HOMEPATH%\AppData\Roaming\discord\shared_proto_db"

setlocal
set "baseName=app-1.0."
set /a "version=9149"
:loop
if exist "%HOMEPATH%\AppData\Local\Discord\%baseName%%version%\Discord.exe*" (
    set "discordPath=%HOMEPATH%\AppData\Local\Discord\%baseName%%version%\Discord.exe"
    echo Discord found at %discordPath%
) else (
    set /a "version+=1"
    goto loop
)

start %discordPath%

exit
