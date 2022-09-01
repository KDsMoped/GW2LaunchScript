set GW2Dir=%1
set GW2BinDir=%GW2Dir%\bin64
set wgetPath=%ProgramFiles(X86)%\GnuWin32\bin\wget
set ArcDpsWebsite=https://www.deltaconnected.com/arcdps/x64/

:: Download for DX11
wget -N --no-check-certificate "%ArcDpsWebsite%/d3d11.dll" -P %GW2Dir%

:: Download for DX9
::wget -N --no-check-certificate -O "%GW2BinDir%\d3d9.dll" "%ArcDpsWebsite%/d3d11.dll"

::echo d | xcopy /y "%GW2BinDir%\d3d9.dll" "%GW2Dir%\d3d11.dll"

start "" %GW2Dir%\gw2-64.exe -mapLoadinfo
