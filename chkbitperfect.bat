@ECHO OFF

REM // build the ROM
call build %1

REM  // run fc
echo -------------------------------------------------------------
IF EXIST shoveitbuilt.bin ( fc /b shoveitbuilt.bin shoveitoriginal.bin
) ELSE echo shoveitbuilt.bin does not exist, probably due to an assembly error

REM // clean up after us
IF EXIST shoveit.lst del shoveit.lst
IF EXIST shoveitbuilt.bin del shoveitbuilt.bin
IF EXIST errors.txt del errors.txt

REM // if someone ran this from Windows Explorer, prevent the window from disappearing immediately
pause
