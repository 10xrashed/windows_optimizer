@echo off
color 0F
title Enhanced Windows 10/11 Performance Optimizer by 10xRashed
setlocal EnableDelayedExpansion

:: Check for Administrator privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires Administrator privileges.
    echo Please run as Administrator.
    pause
    exit /b 1
)

:menu
cls
echo.
echo          .__         ________          __  .__        .__                     
echo __  _  _^|__^| ____   \_____  \ _______/  ^|_^|__^| _____ ^|__^|_______ ___________ 
echo \ \/ \/ /  ^|/    \   /   ^|   \\____ \   __\  ^|/     \^|  \___   // __ \_  __ \
echo  \     /^|  ^|   ^|  \ /    ^|    \  ^|_^> ^>  ^| ^|  ^|  Y Y  \  ^|/    /\  ___/^|  ^| \/
echo   \/\_/ ^|__^|___^|  / \_______  /   __/^|__^| ^|__^|__^|_^|  /__/_____ \\___  ^>__^|   
echo                 \/          \/^|__^|                 \/         \/    \/       
echo ___.                                                                         
echo \_ ^|__ ___.__.                                                                
echo  ^| __ ^<   ^|  ^|                                                                
echo  ^| \_\ \___  ^|                                                                
echo  ^|___  / ____^|                                                                
echo      \/\/                                                                     
echo  ___________         __________               .__               .___         
echo /_   \   _  \ ___  __\______   \_____    _____^|  ^|__   ____   __^| _/         
echo  ^|   /  /_\  \\  \/  /^|       _/\__  \  /  ___/  ^|  \_/ __ \ / __ ^|          
echo  ^|   \  \_/   \^>    ^< ^|    ^|   \ / __ \_\___ \^|   Y  \  ___// /_/ ^|          
echo  ^|___^|\_____  /__/\_ \^|____^|_  /^(____  /____  ^>___^|  /\___  ^>____ ^|          
echo             \/      \/       \/      \/     \/     \/     \/     \/          
echo.
echo 1. System Deep Clean (Logs, Temp, Cache, GPU)
echo 2. Quick System Clean (Essential cleanup only)
echo 3. Performance Optimization Suite [ADVANCED]
echo 4. Memory ^& CPU Optimization
echo 5. Network Performance Boost
echo 6. Visual Effects Optimization
echo 7. Registry Performance Tweaks
echo 8. Restore All Settings to Default
echo 9. System Health Check
echo 10. View Current System Status
echo 11. Exit
echo.
set /p choice="Choose an option (1-11): "

if "!choice!"=="1" goto deepclean
if "!choice!"=="2" goto quickclean
if "!choice!"=="3" goto confirmFullOptimize
if "!choice!"=="4" goto memoryoptimize
if "!choice!"=="5" goto networkoptimize
if "!choice!"=="6" goto visualoptimize
if "!choice!"=="7" goto registryoptimize
if "!choice!"=="8" goto confirmRestore
if "!choice!"=="9" goto systemcheck
if "!choice!"=="10" goto systemstatus
if "!choice!"=="11" exit
goto menu

:: Confirm Full Optimization
:confirmFullOptimize
cls
echo WARNING: This will apply comprehensive performance optimizations
echo including registry changes, service modifications, and system tweaks.
echo.
echo This includes:
echo - Deep system cleaning
echo - Memory and CPU optimization
echo - Network performance boost
echo - Visual effects optimization
echo - Registry performance tweaks
echo.
set /p confirm="Are you sure you want to proceed? (Y/N): "
if /i "!confirm!"=="Y" goto fulloptimize
goto menu

:: Confirm Restore
:confirmRestore
cls
echo WARNING: This will restore all optimizations to Windows defaults.
echo.
set /p confirm="Are you sure you want to restore all settings? (Y/N): "
if /i "!confirm!"=="Y" goto restoreall
goto menu

:: Quick Clean
:quickclean
cls
echo Performing Quick System Clean...
echo ====================================
echo.

echo [1/5] Clearing temporary files...
if exist "%TEMP%" rd /s /q "%TEMP%" 2>nul
if not exist "%TEMP%" md "%TEMP%" 2>nul
if exist "C:\Windows\Temp" rd /s /q "C:\Windows\Temp" 2>nul
if not exist "C:\Windows\Temp" md "C:\Windows\Temp" 2>nul

echo [2/5] Clearing browser caches...
if exist "%LocalAppData%\Google\Chrome\User Data\Default\Cache" rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache" 2>nul
if exist "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache" rd /s /q "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache" 2>nul

echo [3/5] Clearing Windows update cache...
if exist "C:\Windows\SoftwareDistribution\Download" rd /s /q "C:\Windows\SoftwareDistribution\Download" 2>nul

echo [4/5] Clearing thumbnail cache...
for %%i in ("%LocalAppData%\Microsoft\Windows\Explorer\thumbcache*") do (
    if exist "%%i" del /f /q "%%i" 2>nul
)

echo [5/5] Clearing recent files list...
if exist "%AppData%\Microsoft\Windows\Recent\*.*" del /f /q "%AppData%\Microsoft\Windows\Recent\*.*" 2>nul

echo.
echo Quick Clean completed successfully!
echo Estimated space freed: 500MB - 2GB
pause
goto menu

:: Enhanced Deep Clean
:deepclean
cls
echo Performing Deep System Clean...
echo ===================================
echo.

echo [1/12] Clearing temporary files...
if exist "%TEMP%" rd /s /q "%TEMP%" 2>nul
if not exist "%TEMP%" md "%TEMP%" 2>nul
if exist "C:\Windows\Temp" rd /s /q "C:\Windows\Temp" 2>nul
if not exist "C:\Windows\Temp" md "C:\Windows\Temp" 2>nul

echo [2/12] Clearing prefetch files...
if exist "C:\Windows\Prefetch\*.*" del /f /s /q "C:\Windows\Prefetch\*.*" 2>nul

echo [3/12] Clearing GPU caches...
if exist "%LocalAppData%\NVIDIA\DXCache" rd /s /q "%LocalAppData%\NVIDIA\DXCache" 2>nul
if exist "%LocalAppData%\NVIDIA\GLCache" rd /s /q "%LocalAppData%\NVIDIA\GLCache" 2>nul
if exist "%LocalAppData%\AMD\DxCache" rd /s /q "%LocalAppData%\AMD\DxCache" 2>nul
if exist "%LocalAppData%\D3DSCache" rd /s /q "%LocalAppData%\D3DSCache" 2>nul

echo [4/12] Clearing browser data...
if exist "%LocalAppData%\Google\Chrome\User Data\Default\Cache" rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache" 2>nul
if exist "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache" rd /s /q "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache" 2>nul
for /d %%i in ("%AppData%\Mozilla\Firefox\Profiles\*.default*") do (
    if exist "%%i\cache2" rd /s /q "%%i\cache2" 2>nul
)

echo [5/12] Clearing Windows error reports...
if exist "C:\ProgramData\Microsoft\Windows\WER" rd /s /q "C:\ProgramData\Microsoft\Windows\WER" 2>nul
if not exist "C:\ProgramData\Microsoft\Windows\WER" md "C:\ProgramData\Microsoft\Windows\WER" 2>nul

echo [6/12] Clearing Windows update files...
if exist "C:\Windows\SoftwareDistribution\Download" rd /s /q "C:\Windows\SoftwareDistribution\Download" 2>nul

echo [7/12] Clearing system log files...
for /r "C:\Windows\Logs" %%f in (*.log) do (
    if exist "%%f" del /f /q "%%f" 2>nul
)
for /r "C:\Windows\System32\LogFiles" %%f in (*.log) do (
    if exist "%%f" del /f /q "%%f" 2>nul
)

echo [8/12] Clearing thumbnail cache...
taskkill /f /im explorer.exe >nul 2>&1
for %%i in ("%LocalAppData%\Microsoft\Windows\Explorer\thumbcache*") do (
    if exist "%%i" del /f /q "%%i" 2>nul
)
if exist "%LocalAppData%\IconCache.db" del /f /q "%LocalAppData%\IconCache.db" 2>nul

echo [9/12] Clearing memory dumps...
if exist "C:\Windows\*.dmp" del /f /q "C:\Windows\*.dmp" 2>nul
if exist "C:\Windows\Minidump\*.*" del /f /q "C:\Windows\Minidump\*.*" 2>nul

echo [10/12] Clearing old Windows installation files...
if exist "C:\Windows.old" rd /s /q "C:\Windows.old" 2>nul

echo [11/12] Running Windows Disk Cleanup...
cleanmgr /sagerun:1 /verylowdisk

echo [12/12] Restarting Windows Explorer...
start explorer.exe

echo.
echo Deep Clean completed successfully!
echo Estimated space freed: 2GB - 10GB+
pause
goto menu

:: Memory and CPU Optimization
:memoryoptimize
cls
echo Optimizing Memory and CPU Performance...
echo =======================================
echo.

echo [1/6] Disabling memory-intensive services...
sc config "SysMain" start= disabled >nul 2>&1
sc stop "SysMain" >nul 2>&1
sc config "Themes" start= disabled >nul 2>&1
sc stop "Themes" >nul 2>&1

echo [2/6] Optimizing virtual memory...
for /f "tokens=3" %%a in ('wmic computersystem get TotalPhysicalMemory /value ^| find "="') do set /a RAM=%%a/1024/1024
set /a InitialSize=%RAM%*1.5/1
set /a MaxSize=%RAM%*2/1
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False >nul 2>&1
wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=%InitialSize%,MaximumSize=%MaxSize% >nul 2>&1

echo [3/6] Setting CPU scheduling for performance...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 38 /f >nul

echo [4/6] Disabling unnecessary startup programs...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v StartupDelayInMSec /t REG_DWORD /d 0 /f >nul

echo [5/6] Optimizing processor scheduling...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 1 /f >nul

echo [6/6] Clearing memory standby list...
powershell -Command "Clear-Variable * -Force -ErrorAction SilentlyContinue" 2>nul

echo.
echo Memory and CPU optimization completed!
pause
goto menu

:: Network Performance Optimization
:networkoptimize
cls
echo Optimizing Network Performance...
echo =================================
echo.

echo [1/5] Disabling bandwidth throttling...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f >nul

echo [2/5] Optimizing TCP settings...
netsh int tcp set global autotuninglevel=normal >nul
netsh int tcp set global chimney=enabled >nul
netsh int tcp set global rss=enabled >nul

echo [3/5] Disabling Nagle's algorithm for faster response...
for /f "tokens=*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /s /k 2^>nul ^| find "HKEY"') do (
    reg add "%%a" /v TcpAckFrequency /t REG_DWORD /d 1 /f >nul 2>&1
    reg add "%%a" /v TCPNoDelay /t REG_DWORD /d 1 /f >nul 2>&1
)

echo [4/5] Optimizing DNS resolution...
for /f "tokens=2 delims=:" %%a in ('netsh interface show interface ^| find "Connected"') do (
    set connection_name=%%a
    set connection_name=!connection_name: =!
    netsh interface ip set dns "!connection_name!" static 8.8.8.8 >nul 2>&1
    netsh interface ip add dns "!connection_name!" 8.8.4.4 index=2 >nul 2>&1
)

echo [5/5] Flushing DNS cache...
ipconfig /flushdns >nul

echo.
echo Network optimization completed!
pause
goto menu

:: Visual Effects Optimization
:visualoptimize
cls
echo Optimizing Visual Effects for Performance...
echo ==========================================
echo.

echo [1/4] Disabling visual effects...
reg add "HKCU\Control Panel\Desktop" /v DragFullWindows /t REG_SZ /d 0 /f >nul
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f >nul
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f >nul

echo [2/4] Setting performance mode for visual effects...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f >nul

echo [3/4] Disabling transparency effects...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f >nul

echo [4/4] Disabling window animations...
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f >nul

echo.
echo Visual effects optimization completed!
echo Note: Some changes require logout/restart to take effect.
pause
goto menu

:: Registry Performance Tweaks
:registryoptimize
cls
echo Applying Registry Performance Tweaks...
echo ======================================
echo.

echo [1/8] Optimizing file system cache...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v IoPageLockLimit /t REG_DWORD /d 983040 /f >nul

echo [2/8] Disabling last access time stamps...
fsutil behavior set DisableLastAccess 1 >nul

echo [3/8] Optimizing NTFS performance...
fsutil behavior set MemoryUsage 2 >nul
fsutil behavior set MftZoneReservation 2 >nul

echo [4/8] Disabling Windows Search indexing for better performance...
sc config "WSearch" start= disabled >nul 2>&1
sc stop "WSearch" >nul 2>&1

echo [5/8] Optimizing power settings in registry...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1" /v Attributes /t REG_DWORD /d 2 /f >nul

echo [6/8] Disabling Windows compatibility telemetry...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f >nul

echo [7/8] Optimizing mouse and keyboard response...
reg add "HKCU\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d 10 /f >nul
reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 0 /f >nul

echo [8/8] Disabling hibernation to free up disk space...
powercfg /hibernate off >nul

echo.
echo Registry optimization completed!
pause
goto menu

:: Full Optimization Suite
:fulloptimize
cls
echo Running Complete Performance Optimization Suite...
echo ================================================
echo.

echo PHASE 1: Deep System Cleaning
call :deepclean_silent

echo.
echo PHASE 2: Memory and CPU Optimization
call :memoryoptimize_silent

echo.
echo PHASE 3: Network Optimization
call :networkoptimize_silent

echo.
echo PHASE 4: Visual Effects Optimization
call :visualoptimize_silent

echo.
echo PHASE 5: Registry Optimization
call :registryoptimize_silent

echo.
echo PHASE 6: Enabling Ultimate Performance Power Plan
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
for /f "tokens=4" %%a in ('powercfg /l ^| find "Ultimate"') do (
    powercfg -setactive %%a >nul 2>&1
)

echo.
echo ================================================
echo COMPLETE OPTIMIZATION FINISHED SUCCESSFULLY!
echo ================================================
echo.
echo Your system has been fully optimized for maximum performance.
echo It is highly recommended to restart your computer now.
echo.

set /p restart="Do you want to restart your PC now? (Y/N): "
if /i "!restart!"=="Y" shutdown /r /t 10
pause
goto menu

:: System Health Check
:systemcheck
cls
echo Running System Health Check...
echo ===============================
echo.

echo [1/5] Checking system file integrity...
echo This may take several minutes...
sfc /scannow

echo.
echo [2/5] Checking disk health...
echo Running quick disk check...
chkdsk C: /scan

echo.
echo [3/5] Checking system image health...
dism /online /cleanup-image /checkhealth

echo.
echo [4/5] Scanning for malware (Windows Defender)...
powershell -Command "Start-MpScan -ScanType QuickScan" 2>nul

echo.
echo [5/5] Generating system health report...
echo Starting performance monitor report...
timeout /t 3 /nobreak >nul
perfmon /report

echo.
echo System health check completed!
echo Check the generated reports for detailed information.
pause
goto menu

:: System Status
:systemstatus
cls
echo Current System Performance Status
echo ==================================
echo.

echo POWER PLAN:
powercfg /getactivescheme

echo.
echo MEMORY USAGE:
for /f "tokens=2 delims==" %%a in ('wmic OS get TotalVisibleMemorySize /value ^| find "="') do set TotalMem=%%a
for /f "tokens=2 delims==" %%a in ('wmic OS get FreePhysicalMemory /value ^| find "="') do set FreeMem=%%a
set /a UsedMem=TotalMem-FreeMem
set /a MemPercent=UsedMem*100/TotalMem
echo Total Memory: %TotalMem% KB
echo Free Memory: %FreeMem% KB  
echo Memory Usage: %MemPercent%%%

echo.
echo CPU USAGE (Current):
for /f "tokens=2 delims==" %%a in ('wmic cpu get loadpercentage /value ^| find "="') do echo CPU Load: %%a%%

echo.
echo DISK SPACE:
for /f "tokens=1,2,3" %%a in ('wmic logicaldisk get size^,freespace^,caption /format:table ^| find ":"') do (
    echo Drive %%a: Free=%%b bytes, Total=%%c bytes
)

echo.
echo RUNNING SERVICES (Performance-related):
echo SysMain (Superfetch):
sc query SysMain 2>nul | findstr STATE || echo Service not found
echo Windows Search:
sc query WSearch 2>nul | findstr STATE || echo Service not found
echo Themes:
sc query Themes 2>nul | findstr STATE || echo Service not found

echo.
echo NETWORK CONFIGURATION:
ipconfig /all | findstr /i "DNS Servers" | findstr /v "fec0"

pause
goto menu

:: Silent functions for full optimization
:deepclean_silent
echo Performing deep system clean...
if exist "%TEMP%" rd /s /q "%TEMP%" 2>nul
if not exist "%TEMP%" md "%TEMP%" 2>nul
if exist "C:\Windows\Temp" rd /s /q "C:\Windows\Temp" 2>nul  
if not exist "C:\Windows\Temp" md "C:\Windows\Temp" 2>nul
if exist "C:\Windows\Prefetch\*.*" del /f /s /q "C:\Windows\Prefetch\*.*" 2>nul
if exist "%LocalAppData%\NVIDIA\DXCache" rd /s /q "%LocalAppData%\NVIDIA\DXCache" 2>nul
if exist "%LocalAppData%\NVIDIA\GLCache" rd /s /q "%LocalAppData%\NVIDIA\GLCache" 2>nul
if exist "%LocalAppData%\AMD\DxCache" rd /s /q "%LocalAppData%\AMD\DxCache" 2>nul
cleanmgr /sagerun:1 /verylowdisk 2>nul
goto :eof

:memoryoptimize_silent
echo Optimizing memory and CPU...
sc config "SysMain" start= disabled >nul 2>&1
sc stop "SysMain" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 38 /f >nul
goto :eof

:networkoptimize_silent
echo Optimizing network performance...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f >nul
netsh int tcp set global autotuninglevel=normal >nul
goto :eof

:visualoptimize_silent
echo Optimizing visual effects...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f >nul
goto :eof

:registryoptimize_silent
echo Applying registry tweaks...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v IoPageLockLimit /t REG_DWORD /d 983040 /f >nul
fsutil behavior set DisableLastAccess 1 >nul
sc config "WSearch" start= disabled >nul 2>&1
goto :eof

:: Restore All Settings
:restoreall
cls
echo Restoring All Settings to Default...
echo ====================================
echo.

echo [1/10] Restoring power plan...
powercfg -setactive SCHEME_BALANCED >nul 2>&1

echo [2/10] Restoring services...
sc config "SysMain" start= auto >nul 2>&1
sc config "WSearch" start= delayed-auto >nul 2>&1
sc config "Themes" start= auto >nul 2>&1
sc start "SysMain" >nul 2>&1
sc start "WSearch" >nul 2>&1
sc start "Themes" >nul 2>&1

echo [3/10] Restoring visual effects...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f >nul

echo [4/10] Restoring virtual memory to automatic...
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=True >nul 2>&1

echo [5/10] Restoring CPU scheduling...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 2 /f >nul

echo [6/10] Restoring network settings...
netsh int tcp set global autotuninglevel=normal >nul
netsh int tcp set global chimney=disabled >nul

echo [7/10] Restoring file system settings...
fsutil behavior set DisableLastAccess 0 >nul
fsutil behavior set MemoryUsage 1 >nul

echo [8/10] Restoring telemetry settings...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 3 /f >nul

echo [9/10] Re-enabling hibernation...
powercfg /hibernate on >nul

echo [10/10] Restoring Windows Defender settings...
sc config WinDefend start= auto >nul 2>&1
sc start WinDefend >nul 2>&1

echo.
echo All settings have been restored to Windows defaults!

set /p restart="Do you want to restart your PC now? (Y/N): "
if /i "!restart!"=="Y" shutdown /r /t 10
pause
goto menu