ECHO OFF
CLS

for /f "tokens=*" %%f in ('wmic os get Caption /value ^| find "="') do set "%%f"
for /f "tokens=*" %%f in ('wmic os get CSDVersion /value ^| find "="') do set "%%f"
for /f "tokens=*" %%f in ('wmic os get SerialNumber /value ^| find "="') do set "%%f"

SET Caption=%Caption: =_%
SET CSDVersion=%CSDVersion: =_%
SET CSDVersion=%CSDVersion:"=%
IF [%CSDVersion%]==[] SET CSDVersion=N/A

ECHO ^<^<^<windows_os_info^>^>^>
ECHO %Caption% %CSDVersion% %SerialNumber%
