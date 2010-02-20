@echo off

SET INSTALLFOLDER=M:\Documents\Bob\btv_ipod
rem SET ITUNESFOLDER=%HOMEDRIVE%%HOMEPATH%\iTunes
SET OUTPUTFOLDER=%TEMP%
SET BTVSERVER=BOBBO:8129

SET INFILE="%~pdnx1"
SET OUTFILE="%OUTPUTFOLDER%\%~n1.mp4"

SET FFMPEG="%INSTALLFOLDER%\ffmpeg.exe"
SET METADATA=cscript "%INSTALLFOLDER%\BTV2iPod_MetaData.vbs"
SET IMPORT=cscript "%INSTALLFOLDER%\iTunesImport.vbs"

echo.
echo BeyondTV to iPod Conversion v1.2
echo Input: %INFILE%
echo Output: %OUTFILE%
echo.

echo Creating %OUTFILE%...
%FFMPEG% -y -threads %NUMBER_OF_PROCESSORS% -i %INFILE% -f mp4 -async 1 -deinterlace -s 320x240 -acodec libfaac -vcodec libx264 -b 768000 -qscale 7 -bufsize 384 -coder 0 -level 13 %OUTFILE%

echo.
echo Loading metadata from BeyondTV...
%METADATA% %INFILE% %OUTFILE% %BTVSERVER%

echo.
echo Importing into iTunes...
%IMPORT% %OUTFILE% BeyondTV

echo.
echo Deleting temp file...
:loop
ping 1.1.1.1 -n 1 -w 10000 > nul
del %OUTFILE%
IF EXIST %OUTFILE% GOTO loop
