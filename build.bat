@echo off

asm68k /k /p /o ae- shoveit.asm, shoveitbuilt.bin >errors.txt, , shoveit.lst
rompad.exe shoveitbuilt.bin 255 0
fixheadr.exe shoveitbuilt.bin