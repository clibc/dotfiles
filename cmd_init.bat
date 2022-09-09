@echo off

REM call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"
doskey env32="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"
doskey env="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
REM doskey ls=dir $*
REM doskey ll=dir /A $*
doskey ls=ls.exe $*
doskey ll=ls.exe -la $*

doskey clear=cls
doskey dbg=devenv.exe $*
doskey debug=devenv.exe $*
doskey cat=type $*
doskey grep=findstr $*
doskey pwd=cd
doskey cp=copy $*
doskey mv=move $*
doskey rm=del $*
doskey alias=doskey /MACROS:ALL
doskey emacs=start /B runemacs.exe $*
doskey nmake=nmake /F NMakefile $*
REM doskey nano="C:\Program Files\Git\usr\bin\nano.exe" $*
REM Requires youtube-dl.exe and ffmpeg.exe
doskey youtubemp3=youtube-dl.exe -x --audio-format "mp3" -o %%(title)s.%%(ext)s $*
cls
