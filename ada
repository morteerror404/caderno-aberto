@echo off
if not "%1" == "max" pause start /MAX cmd /c %0 max & exit/b
cls
@echo off
::Exm free tweaking utility v9.21 | Made and distributed by EXM TWEAKS, S.R.O. ® 2025

:: Color Codes
set w=[97m
set g=[90m
set p=[95m
set b=[96m
set o=[1m

:: Enabling ANSI Escape Sequences
reg add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

cls 
chcp 437 >nul 2>&1 
for /f %%i in ('powershell -NoProfile -Command "(New-Object System.Security.Principal.NTAccount($env:USERNAME)).Translate([System.Security.Principal.SecurityIdentifier]).Value"') do set "USER_SID=%%i" >nul 2>&1

::Enabling Restore points 
powershell -NoProfile Enable-ComputerRestore -Drive 'C:\' >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f >nul 2>&1
chcp 65001 >nul 2>&1

::Enabling Delayed Expansion
setlocal EnabledelayedExpansion > nul

cls 
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                         %p%███████╗██╗  ██╗███╗   ███╗ ███████╗██████╗ ███████╗███████╗ ██╗   ██╗████████╗██╗██╗     ██╗████████╗██╗   ██╗   █████╗    ██████╗    
echo.                                         %p%██╔════╝╚██╗██╔╝████╗ ████║ ██╔════╝██╔══██╗██╔════╝██╔════╝ ██║   ██║╚══██╔══╝██║██║     ██║╚══██╔══╝╚██╗ ██╔╝  ██╔══██╗   ╚════██╗     
echo.                                         %p%█████╗   ╚███╔╝ ██╔████╔██║ █████╗  ██████╔╝█████╗  █████╗   ██║   ██║   ██║   ██║██║     ██║   ██║    ╚████╔╝   ╚██████║     ███╔═╝                    
echo.                                         %p%██╔══╝   ██╔██╗ ██║╚██╔╝██║ ██╔══╝  ██╔══██╗██╔══╝  ██╔══╝   ██║   ██║   ██║   ██║██║     ██║   ██║     ╚██╔╝     ╚═══██║   ██╔══╝       
echo.                                         %p%███████╗██╔╝╚██╗██║ ╚═╝ ██║ ██║     ██║  ██║███████╗███████╗ ╚██████╔╝   ██║   ██║███████╗██║   ██║      ██║      █████╔╝██╗███████╗ 
echo.                                         %p%╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝  ╚═════╝    ╚═╝   ╚═╝╚══════╝╚═╝   ╚═╝      ╚═╝      ╚════╝ ╚═╝╚══════╝%g%.1%b% 
echo.                                                                            ╔════════════════════════════════════════════════════╗
echo.                                                                            ║                                                    ║
echo.                                                                            ║     %w% Checking for Administrative Privelages...   %b%  ║
echo.                                                                            ║                                                    ║
echo.                                                                            ╚════════════════════════════════════════════════════╝
timeout /t 3 /nobreak > NUL
rmdir %SystemDrive%\Windows\system32\adminrightstest >nul 2>&1
mkdir %SystemDrive%\Windows\system32\adminrightstest >nul 2>&1
if %errorlevel% neq 1 pause pause goto welcome  
) ELSE ( 
cls 
timeout /t 1 /nobreak > NUL
chcp 437 >nul 2>&1
powershell -NoProfile -NonInteractive -Command start -verb runas "'%~s0'" >nul 2>&1
chcp 65001 >nul 2>&1
:rmenu

cls
echo. 
echo. 
echo. 
echo.
echo.                                                         %p%███████╗██╗  ██╗███╗   ███╗ ██╗   ██╗████████╗██╗██╗     ██╗████████╗██╗   ██╗   █████╗    ██████╗   
echo.                                                         %p%██╔════╝╚██╗██╔╝████╗ ████║ ██║   ██║╚══██╔══╝██║██║     ██║╚══██╔══╝╚██╗ ██╔╝  ██╔══██╗   ╚════██╗    
echo.                                                         %p%█████╗   ╚███╔╝ ██╔████╔██║ ██║   ██║   ██║   ██║██║     ██║   ██║    ╚████╔╝   ╚██████║     ███╔═╝                    
echo.                                                         %p%██╔══╝   ██╔██╗ ██║╚██╔╝██║ ██║   ██║   ██║   ██║██║     ██║   ██║     ╚██╔╝     ╚═══██║   ██╔══╝      
echo.                                                         %p%███████╗██╔╝╚██╗██║ ╚═╝ ██║ ╚██████╔╝   ██║   ██║███████╗██║   ██║      ██║      █████╔╝██╗███████╗
echo.                                                         %p%╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═════╝    ╚═╝   ╚═╝╚══════╝╚═╝   ╚═╝      ╚═╝      ╚════╝ ╚═╝╚══════╝  %b% 
echo.                                                    %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                           %W%   Exm is not running as Admin!
echo.                                         
echo.                                                              %W% Please close the utility and run it as administrator so the optimizations can apply properly!
echo.                                         
echo.                                                                                            %W%  If you want to Exit press X  
echo.                                                    %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                 
echo.                                                         %W% If that doesnt work, you can press %p%U%w%to disable UAC, after that restart your pc and utility should work
echo.                  
echo.                                                    %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%

set /p input=:
if /i %input% == X exit
if /i %input% == U start https://discordapp.com/channels/1177410668606009444/1178430446590238860/1325530493332226198
)
) ELSE (
echo Invalid Input & pause pause goto rmen
%b%
:welcome
CLS
echo.
echo.
echo. 
echo.
echo.                                                                       %p% ██╗       ██╗███████╗██╗      █████╗  █████╗ ███╗   ███╗███████╗ 
echo.                                                                       %p% ██║  ██╗  ██║██╔════╝██║     ██╔══██╗██╔══██╗████╗ ████║██╔════╝ 
echo.                                                                       %p% ╚██╗████╗██╔╝█████╗  ██║     ██║  ╚═╝██║  ██║██╔████╔██║█████╗   
echo.                                                                       %p%  ████╔═████║ ██╔══╝  ██║     ██║  ██╗██║  ██║██║╚██╔╝██║██╔══╝   
echo.                                                                       %p%  ╚██╔╝ ╚██╔╝ ███████╗███████╗╚█████╔╝╚█████╔╝██║ ╚═╝ ██║███████╗ 
echo.                                                                       %p%   ╚═╝   ╚═╝  ╚══════╝╚══════╝ ╚════╝  ╚════╝ ╚═╝     ╚═╝╚══════╝  
echo.                             %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                      We are not responsible for any problems this may cause to your pc, if you encounter any, don't be afraid to reach out in our discord server 
echo.
echo.                                                                  It is prohibited to resell/repackage any of our free tools, it will lead to consequences
echo.                             %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                 Press a NUMBER on your keyboard followed by ENTER to select an option, Please Read All warnings, don't just blindly press buttons without reading.
echo.
echo.                                          You can find the tutorial, more information about the utility and much more in the EXM Tweaks Discord Server discord.gg/exm
echo.                                                                         %p%%p%%p%%g%  EXM TWEAKS, S.R.O. ® * Updated 1st of June 2025                   
echo.                             %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%b%
echo.                               
echo.
echo.
echo.                                                                        %b%"═══════════════════════════════════════════════════════"
echo.                                                                                     %w%    Press any key to continue...
echo.                                                                        %b%"═══════════════════════════════════════════════════════"
pause > nul
CLS

:: Restore Point
:restorepoint
cls
echo.
echo.
echo.
echo.
echo.                                          %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.                                                  
echo.                                                    %p%██████╗ ███████╗ ██████╗████████╗ █████╗ ██████╗ ███████╗  ██████╗  █████╗ ██╗███╗  ██╗████████╗         
echo.                                                    %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗ ██║╚══██╔══╝        
echo.                                                    %p%██████╔╝█████╗  ╚█████╗    ██║   ██║  ██║██████╔╝█████╗    ██████╔╝██║  ██║██║██╔██╗██║   ██║            
echo.                                                    %p%██╔══██╗██╔══╝   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝    ██╔═══╝ ██║  ██║██║██║╚████║   ██║           
echo.                                                    %p%██║  ██║███████╗██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗  ██║     ╚█████╔╝██║██║ ╚███║   ██║           
echo.                                                    %p%╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝  ╚═╝      ╚════╝ ╚═╝╚═╝  ╚══╝   ╚═╝           
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                %w% Do you want to Create a Restore Point?                                 
echo.                                                                                                                                                                 
echo.                                                                                                                                                                 
echo.                                                         %p%[%w%1%p%]%w% Make A restore Point                           %p%[%w%2%p%]%w% Skip restore point
echo.
echo.
echo.                                                         %p%%p%%p%%p%                         %p%[%w%R%p%]%w% Use a restore point 
echo.                                                                                                                                                                 
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                     %W% Allows you to revert your PC to the same settings as it was when making the restore point         
echo.                                                        %W% You can use a restore point to revert the tweaks made by the utility, if you wish so                
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 
 
set /p input=:
if /i %input% == 1 pause pause goto createRP
if /i %input% == 2 pause pause goto resources
if /i %input% == R pause pause goto restore
::secretskiptomenu
if /i %input% == m pause pause goto menu
) ELSE (
echo Invalid Input & pause pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause pause goto RedirectMenu

:RedirectMenu
pause pause goto restorepoint


:createRP
cls 
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗████████╗ █████╗ ██████╗ ███████╗  ██████╗  █████╗ ██╗███╗  ██╗████████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗ ██║╚══██╔══╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗    ██║   ██║  ██║██████╔╝█████╗    ██████╔╝██║  ██║██║██╔██╗██║   ██║   
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝    ██╔═══╝ ██║  ██║██║██║╚████║   ██║   
echo.                                                                  %p%██║  ██║███████╗██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗  ██║     ╚█████╔╝██║██║ ╚███║   ██║   
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝  ╚═╝      ╚════╝ ╚═╝╚═╝  ╚══╝   ╚═╝   
echo.
echo. %w% Creating a restore point... %b%                                                       
chcp 437 >nul 2>&1
powershell "Checkpoint-Computer -Description 'EXM Free utility'
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Restore point completed successfully, press "OK" to continue', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1 
cls
pause pause goto :resources

:resources
cls
echo.
echo.
echo.
echo.                                 %p% ██████╗ █████╗  █████╗ ███╗  ██╗███╗  ██╗██╗███╗  ██╗ ██████╗   ██████╗ ███████╗ ██████╗ █████╗  █████╗ ██╗   ██╗██████╗  ██████╗███████╗ ██████╗         
echo.                                 %p%██╔════╝██╔══██╗██╔══██╗████╗ ██║████╗ ██║██║████╗ ██║██╔════╝   ██╔══██╗██╔════╝██╔════╝██╔══██╗██╔══██╗██║   ██║██╔══██╗██╔════╝██╔════╝██╔════╝         
echo.                                 %p%╚█████╗ ██║  ╚═╝███████║██╔██╗██║██╔██╗██║██║██╔██╗██║██║  ██╗   ██████╔╝█████╗  ╚█████╗ ██║  ╚═╝██║  ██║██║   ██║██████╔╝╚█████╗ █████╗  ╚█████╗          
echo.                                 %p% ╚═══██╗██║  ██╗██╔══██║██║╚████║██║╚████║██║██║╚████║██║  ╚██╗  ██╔══██╗██╔══╝   ╚═══██╗██║  ██╗██║  ██║██║   ██║██╔══██╗ ╚═══██╗██╔══╝   ╚═══██╗         
echo.                                 %p%██████╔╝╚█████╔╝██║  ██║██║ ╚███║██║ ╚███║██║██║ ╚███║╚██████╔╝  ██║  ██║███████╗██████╔╝╚█████╔╝╚█████╔╝╚██████╔╝██║  ██║██████╔╝███████╗██████╔╝██╗██╗██╗
echo.                                 %p%╚═════╝  ╚════╝ ╚═╝  ╚═╝╚═╝  ╚══╝╚═╝  ╚══╝╚═╝╚═╝  ╚══╝ ╚═════╝   ╚═╝  ╚═╝╚══════╝╚═════╝  ╚════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. %w%- Looking for Resources and making sure they are up to date... %g%(Resources are files used by the tool, such as the power plan or ) %b% 
timeout 1 > nul


if not exist "C:\exm\Exm_Free_Power_Plan_V7.pow" (
pause pause goto download
)
if not exist "C:\exm\Autoruns.exe" (
pause pause goto download
)
if not exist "C:\exm\EXM_Free_NVPI_V8.nip" (
pause pause goto download
)
if not exist "C:\exm\Windows_Update_Blocker.exe" (
pause pause goto download
)
if not exist "C:\exm\Nvidia_Porfile_Inspector_2.4.0.19.exe" (
pause pause goto download
)
if not exist "C:\exm\EXM_Wallpaper_2.0.png" (
pause pause goto download
) 


) ELSE (
pause goto menu

:Download
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Resources Not found or out of date, Press "OK" To download them', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
::Downloading power plan, autoruns, nvidia profile inspector, NVPI config, & Windows update blocker
::making exm folder
echo.
echo.
echo.
echo. %w%- Deleting old resource folder
md C:\exm 
del /s /q C:\exm
echo. %w%- Creating C:\exm folder
md C:\exm 
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗ █████╗ ██╗   ██╗██████╗  █████╗ ███████╗ ██████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔══██╗██╔══██╗██╔════╝██╔════╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗ ██║  ██║██║   ██║██████╔╝██║  ╚═╝█████╗  ╚█████╗ 
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗██║  ██║██║   ██║██╔══██╗██║  ██╗██╔══╝   ╚═══██╗
echo.                                                                  %p%██║  ██║███████╗██████╔╝╚█████╔╝╚██████╔╝██║  ██║╚█████╔╝███████╗██████╔╝
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝ ╚════╝ ╚══════╝╚═════╝ 
echo.
echo. %w%- Downloading the EXM Free Power Plan... %g%(Part of the Resources Used by the tool. You can find them in the C:\exm folder, they are all trusted files used by thousands of people) %b% 
echo.
echo [======                       14.5%                         ]
echo.
chcp 437 >nul 2>&1
curl -g -k -L -# -o "C:\exm\Exm_Free_Power_Plan_V7.pow" "https://raw.githubusercontent.com/exm4L/9.1-resources/refs/heads/main/EXM_Free_Power_Plan_V7.pow" >nul 2>&1
:: Power plan made by exmtweaks
chcp 65001 >nul 2>&1
timeout 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗ █████╗ ██╗   ██╗██████╗  █████╗ ███████╗ ██████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔══██╗██╔══██╗██╔════╝██╔════╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗ ██║  ██║██║   ██║██████╔╝██║  ╚═╝█████╗  ╚█████╗ 
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗██║  ██║██║   ██║██╔══██╗██║  ██╗██╔══╝   ╚═══██╗
echo.                                                                  %p%██║  ██║███████╗██████╔╝╚█████╔╝╚██████╔╝██║  ██║╚█████╔╝███████╗██████╔╝
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝ ╚════╝ ╚══════╝╚═════╝ 
echo.
echo. %w%- Downloading Autoruns... %g%(Part of the Resources Used by the tool. You can find them in the C:\exm folder, they are all trusted files used by thousands of people) %b% 
echo. 
echo [==================           30.5%                         ]
echo.
chcp 437 >nul 2>&1
curl -g -k -L -# -o "C:\exm\Autoruns.exe" "https://raw.githubusercontent.com/exm4L/9.1-resources/refs/heads/main/Autoruns.exe" >nul 2>&1  
:: credit to microsoft :: https://learn.microsoft.com/en-us/sysinternals/downloads/autoruns
chcp 65001 >nul 2>&1
timeout 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗ █████╗ ██╗   ██╗██████╗  █████╗ ███████╗ ██████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔══██╗██╔══██╗██╔════╝██╔════╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗ ██║  ██║██║   ██║██████╔╝██║  ╚═╝█████╗  ╚█████╗ 
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗██║  ██║██║   ██║██╔══██╗██║  ██╗██╔══╝   ╚═══██╗
echo.                                                                  %p%██║  ██║███████╗██████╔╝╚█████╔╝╚██████╔╝██║  ██║╚█████╔╝███████╗██████╔╝
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝ ╚════╝ ╚══════╝╚═════╝ 
echo.
echo. %w%- Downloading Nvidia Profile Inspector... %g%(Part of the Resources Used by the tool. You can find them in the C:\exm folder, they are all trusted files used by thousands of people) %b% 
echo.
echo [=============================51.0%                         ]
echo.
chcp 437 >nul 2>&1
curl -g -k -L -# -o "C:\exm\Nvidia_Porfile_Inspector_2.4.0.19.exe" "https://raw.githubusercontent.com/exm4L/9.1-resources/refs/heads/main/Nvidia_Porfile_Inspector_2.4.0.19.exe" >nul 2>&1
:: credit to Orbmu2k :: https://github.com/Orbmu2k/nvidiaProfileInspector/releases
chcp 65001 >nul 2>&1
timeout 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗ █████╗ ██╗   ██╗██████╗  █████╗ ███████╗ ██████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔══██╗██╔══██╗██╔════╝██╔════╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗ ██║  ██║██║   ██║██████╔╝██║  ╚═╝█████╗  ╚█████╗ 
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗██║  ██║██║   ██║██╔══██╗██║  ██╗██╔══╝   ╚═══██╗
echo.                                                                  %p%██║  ██║███████╗██████╔╝╚█████╔╝╚██████╔╝██║  ██║╚█████╔╝███████╗██████╔╝
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝ ╚════╝ ╚══════╝╚═════╝ 
echo.
echo. %w%- Downloading EXM Wallpaper... %g%(Part of the Resources Used by the tool. You can find them in the C:\exm folder, they are all trusted files used by thousands of people) %b% 
echo.
echo [=============================60.0%======                   ]
echo.
chcp 437 >nul 2>&1
curl -g -k -L -# -o "C:\exm\EXM_Wallpaper_2.0.png" "https://raw.githubusercontent.com/exm4L/9.1-resources/refs/heads/main/EXM_Wallpaper_2.0.png" >nul 2>&1  
chcp 65001 >nul 2>&1
timeout 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗ █████╗ ██╗   ██╗██████╗  █████╗ ███████╗ ██████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔══██╗██╔══██╗██╔════╝██╔════╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗ ██║  ██║██║   ██║██████╔╝██║  ╚═╝█████╗  ╚█████╗ 
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗██║  ██║██║   ██║██╔══██╗██║  ██╗██╔══╝   ╚═══██╗
echo.                                                                  %p%██║  ██║███████╗██████╔╝╚█████╔╝╚██████╔╝██║  ██║╚█████╔╝███████╗██████╔╝
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝ ╚════╝ ╚══════╝╚═════╝ 
echo.
echo. %w%- Downloading Nvidia Profile Inspector Config... %g%(Part of the Resources Used by the tool. You can find them in the C:\exm folder, they are all trusted files used by thousands of people) %b% 
echo.
echo [=============================69.0%===========              ]
echo.
chcp 437 >nul 2>&1
curl -g -k -L -# -o "C:\exm\EXM_Free_NVPI_V8.nip" "https://raw.githubusercontent.com/exm4L/9.1-resources/refs/heads/main/EXM_free_NVPI_V8.nip" >nul 2>&1  
:: credit to Orbmu2k (Config Made by exmtweaks) :: https://github.com/Orbmu2k/nvidiaProfileInspector/releases
chcp 65001 >nul 2>&1
timeout 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗ █████╗ ██╗   ██╗██████╗  █████╗ ███████╗ ██████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔══██╗██╔══██╗██╔════╝██╔════╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗ ██║  ██║██║   ██║██████╔╝██║  ╚═╝█████╗  ╚█████╗ 
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗██║  ██║██║   ██║██╔══██╗██║  ██╗██╔══╝   ╚═══██╗
echo.                                                                  %p%██║  ██║███████╗██████╔╝╚█████╔╝╚██████╔╝██║  ██║╚█████╔╝███████╗██████╔╝
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝ ╚════╝ ╚══════╝╚═════╝ 
echo.
echo. %w%- Downloading the Windows Update Blocker Utility... %g%(Part of the Resources Used by the tool. You can find them in the C:\exm folder, they are all trusted files used by thousands of people) %b% 
echo.                                                     
echo. [=============================100.0%=======================]

echo.
chcp 437 >nul 2>&1
curl -g -k -L -# -o "C:\exm\Windows_Update_Blocker.exe" "https://raw.githubusercontent.com/exm4L/9.1-resources/refs/heads/main/Windows_Update_Blocker.exe" >nul 2>&1  
:: https://www.sordum.org/downloads/?st-windows-update-blocker
chcp 65001 >nul 2>&1
timeout 1 > nul
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Downloaded resources successfully, Press "OK" To continue to the menu', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
cls
pause goto menu

:soon
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto menu

:restore
cls 
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗████████╗ █████╗ ██████╗ ███████╗  ██████╗  █████╗ ██╗███╗  ██╗████████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗ ██║╚══██╔══╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗    ██║   ██║  ██║██████╔╝█████╗    ██████╔╝██║  ██║██║██╔██╗██║   ██║   
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝    ██╔═══╝ ██║  ██║██║██║╚████║   ██║   
echo.                                                                  %p%██║  ██║███████╗██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗  ██║     ╚█████╔╝██║██║ ╚███║   ██║   
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝  ╚═╝      ╚════╝ ╚═╝╚═╝  ╚══╝   ╚═╝   
echo.
rstrui.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto menu

:menu
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.                                                %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com                                        
echo.
echo.                                         %p%███████╗██╗  ██╗███╗   ███╗ ███████╗██████╗ ███████╗███████╗ ██╗   ██╗████████╗██╗██╗     ██╗████████╗██╗   ██╗   █████╗    ██████╗    
echo.                                         %p%██╔════╝╚██╗██╔╝████╗ ████║ ██╔════╝██╔══██╗██╔════╝██╔════╝ ██║   ██║╚══██╔══╝██║██║     ██║╚══██╔══╝╚██╗ ██╔╝  ██╔══██╗   ╚════██╗     
echo.                                         %p%█████╗   ╚███╔╝ ██╔████╔██║ █████╗  ██████╔╝█████╗  █████╗   ██║   ██║   ██║   ██║██║     ██║   ██║    ╚████╔╝   ╚██████║     ███╔═╝                    
echo.                                         %p%██╔══╝   ██╔██╗ ██║╚██╔╝██║ ██╔══╝  ██╔══██╗██╔══╝  ██╔══╝   ██║   ██║   ██║   ██║██║     ██║   ██║     ╚██╔╝     ╚═══██║   ██╔══╝       
echo.                                         %p%███████╗██╔╝╚██╗██║ ╚═╝ ██║ ██║     ██║  ██║███████╗███████╗ ╚██████╔╝   ██║   ██║███████╗██║   ██║      ██║      █████╔╝██╗███████╗ 
echo.                                         %p%╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝  ╚═════╝    ╚═╝   ╚═╝╚══════╝╚═╝   ╚═╝      ╚═╝      ╚════╝ ╚═╝╚══════╝%g%.1%b% 
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                                                                              
echo.                                                  %p%[%w%1%p%]%w% General System Optimizations         %p%[%w%2%p%]%w% Power Optimizations                   %p%[%w%3%p%]%w% Mouse and Keyboard Optimizations 
echo. 
echo.                                                  %p%[%w%4%p%]%w% GPU Optimizations                    %p%[%w%5%p%]%w% CPU Optimizations                     %p%[%w%6%p%]%w% PC clean                  
echo.                                                                                                                                                                                 
echo.                                                  %p%[%w%7%p%]%w% System Debloat                       %p%[%w%8%p%]%w% Storage Optimizations                 %p%[%w%9%p%]%w% Memory Optimizations
echo.                                                                                                                                                                                 
echo.                                                  %p%[%w%10%p%]%w% Additional / QOL                    %p%[%w%11%p%]%w% EXM Network Tweaking Utility         %p%[%w%12%p%]%w% Coming soon!
echo.                                                                                                                                                                                
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                  %p%[%w%F%p%]%w% Fixes and Reverts                    %p%[%w%W%p%]%w% Completely Optimize Your PC           %p%[%w%R%p%]%w% Use Restore Point
echo.                                                                                                                                                                                 
echo.                                                  %p%[%w%P%p%]%w% 9.2.1 Patch Notes                    %p%[%w%X%p%]%w% Exit The Utility                      %p%[%w%E%p%]%w% EXM Tweaks Discord %g%(More Tweaks)
echo.
echo.                                                                                  %p%%p%%p%%g%  EXM TWEAKS, S.R.O. ® * Updated 1st of July 2025                   
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%


set /p input=:
if /i %input% == 1 pause goto 1
if /i %input% == 2 pause goto 2war
if /i %input% == 3 pause goto 3
if /i %input% == 4 pause goto 4
if /i %input% == 5 pause goto 5war
if /i %input% == 6 pause goto 6
if /i %input% == 7 pause goto 7war
if /i %input% == 8 pause goto 8
if /i %input% == 9 pause goto 9
if /i %input% == 10 pause goto 10
if /i %input% == 11 pause goto 11 

if /i %input% == Restore pause goto RestorePoint
if /i %input% == F pause goto FR
if /i %input% == R pause goto Restore
if /i %input% == X pause goto exit
if /i %input% == P pause goto PatchNotes
if /i %input% == W start https://exmtweaks.com 
if /i %input% == E start https://discord.gg/exm

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 1 
pause goto RedirectMenu

:RedirectMenu
cls
pause goto menu

:10
cls
echo.
echo.                             %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                  %p% █████╗ ██████╗ ██████╗ ██╗████████╗██╗ █████╗ ███╗  ██╗ █████╗ ██╗     
echo.                                                  %p%██╔══██╗██╔══██╗██╔══██╗██║╚══██╔══╝██║██╔══██╗████╗ ██║██╔══██╗██║     
echo.                                                  %p%███████║██║  ██║██║  ██║██║   ██║   ██║██║  ██║██╔██╗██║███████║██║     
echo.                                                  %p%██╔══██║██║  ██║██║  ██║██║   ██║   ██║██║  ██║██║╚████║██╔══██║██║     
echo.                                                  %p%██║  ██║██████╔╝██████╔╝██║   ██║   ██║╚█████╔╝██║ ╚███║██║  ██║███████╗
echo.                                                  %p%╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚═╝   ╚═╝   ╚═╝ ╚════╝ ╚═╝  ╚══╝╚═╝  ╚═╝╚══════╝
echo.                                            %b%"════════════════════════════════════════════════════════════════════════════════"%w%
echo.      
echo.                                                                    %p%[%w%1%p%]%w% Set exm wallpaper  
echo.  
echo.                                                                    %p%[%w%2%p%]%w% Better wallpaper quality
echo.
echo.                                                                    %p%[%w%3%p%]%w% Disable UAC
echo.  
echo.                                                                    %p%[%w%4%p%]%w% Show file extensions
echo.
echo.                                                                    %p%[%w%5%p%]%w% Enable dark mode
echo.
echo.
echo.                                                                          %p%[%w%M%p%]%w% Back to menu                               
echo.                                                                                          
echo.                                            %b%"════════════════════════════════════════════════════════════════════════════════"
echo.                                                             %W% Additional Quality of life tweaks and more
echo.                                            %b%"════════════════════════════════════════════════════════════════════════════════"
echo.               
set /p input=:
if /i %input% == 1 pause goto a1
if /i %input% == 2 pause goto a2
if /i %input% == 3 pause goto a3
if /i %input% == 4 pause goto a4
if /i %input% == 5 pause goto a5
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto 10 


:a1
echo %w% - Set exm wallpaper%b%
reg add "HKCU\control panel\desktop" /v wallpaper /t REG_SZ /d "C:\Users\jakub\Downloads\exm 3.0 wallpaper.png" /f 
reg add "HKCU\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 10 /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto 10

:a2
echo %w% - Enabling full wallpaper quality%b%
reg add "HKCU\Control Panel\Desktop" /v "JPEGImportQuality" /t REG_DWORD /d "100" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto 10

:a3
echo %w% - Enabling full wallpaper quality%b%
reg add "HKCU\Control Panel\Desktop" /v "JPEGImportQuality" /t REG_DWORD /d "100" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto 10



:a4
echo %w% - Show file extensions%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f
reg add "HKCR\lnkfile" /v "NeverShowExt" /f
reg add "HKCR\IE.AssocFile.URL" /v "NeverShowExt" /f
reg add "HKCR\IE.AssocFile.WEBSITE" /v "NeverShowExt" /f
reg add "HKCR\InternetShortcut" /v "NeverShowExt" /f
reg add "HKCR\Microsoft.Website" /v "NeverShowExt" /f
reg add "HKCR\piffile" /v "NeverShowExt" /f
reg add "HKCR\SHCmdFile" /v "NeverShowExt" /f
reg add "HKCR\LibraryFolder" /v "NeverShowExt" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto 10

:a5
echo %w% - Enabling Dark mode%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f
reg add "HKCR\lnkfile" /v "NeverShowExt" /f
reg add "HKCR\IE.AssocFile.URL" /v "NeverShowExt" /f
reg add "HKCR\IE.AssocFile.WEBSITE" /v "NeverShowExt" /f
reg add "HKCR\InternetShortcut" /v "NeverShowExt" /f
reg add "HKCR\Microsoft.Website" /v "NeverShowExt" /f
reg add "HKCR\piffile" /v "NeverShowExt" /f
reg add "HKCR\SHCmdFile" /v "NeverShowExt" /f
reg add "HKCR\LibraryFolder" /v "NeverShowExt" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu








:patchnotes
cls
echo.
echo.
echo.                                    %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                        %p%██████╗  █████╗ ████████╗ █████╗ ██╗  ██╗███╗  ██╗ █████╗ ████████╗███████╗ ██████╗   █████╗    ██████╗      ███╗  
echo.                                        %p%██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██║  ██║████╗ ██║██╔══██╗╚══██╔══╝██╔════╝██╔════╝  ██╔══██╗   ╚════██╗    ████║ 
echo.                                        %p%██████╔╝███████║   ██║   ██║  ╚═╝███████║██╔██╗██║██║  ██║   ██║   █████╗  ╚█████╗   ╚██████║     ███╔═╝   ██╔██║ 
echo.                                        %p%██╔═══╝ ██╔══██║   ██║   ██║  ██╗██╔══██║██║╚████║██║  ██║   ██║   ██╔══╝   ╚═══██╗   ╚═══██║   ██╔══╝     ╚═╝██║ 
echo.                                        %p%██║     ██║  ██║   ██║   ╚█████╔╝██║  ██║██║ ╚███║╚█████╔╝   ██║   ███████╗██████╔╝   █████╔╝██╗███████╗██╗███████╗
echo.                                        %p%╚═╝     ╚═╝  ╚═╝   ╚═╝    ╚════╝ ╚═╝  ╚═╝╚═╝  ╚══╝ ╚════╝    ╚═╝   ╚══════╝╚═════╝    ╚════╝ ╚═╝╚══════╝╚═╝╚══════╝
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w% 
echo.                                          %b%9.2.1 / EXM NETWORK UTILITY 3.0 PATCHNOTES%w%     
echo.                                          - Added 2 new buttons into the network tweaking utility
echo.                                          - Completely reworked the QOS policy creating a custom applier without gpedit being required
echo.                                          - Updated Optimize MLD, ICMP Chimney, DCA, and More, added warnings and more
echo.                                          - Updated the network adapter optimization for ethernet
echo.                                          - Cleaned up the network utility UI
echo.                                          - Added a revert Button the qos tool
echo.                                          - Visual changes to the main utility
echo.                                          - Updated descriptions and more
echo.                                          - Minor bug fixes 
echo. 
echo.                                          %b%9.2 PATCHNOTES%w%
echo.                                          - New Additional / quality of life category (includes exm wallpaper and more...)
echo.                                          - Updated the nvpi profile to v8
echo.                                          - Added a fivem fix to quick fixes category
echo.                                          - Removed MSI utility due to it causing stutters on low end pcs
echo.                                          - Reworked all tweaks which relied on the use WMIC to not need it anymore, since win 11 24h2 doesnt have wmic
echo.                                          - Minor bug fixes 
echo.                                          - Updated certain gpu tweaks
echo.                                          - Small adjustments to cpu tweaks
echo.                                          - Small adjustments to amd power gpu tweaks
echo.                                          - Minor adjustments to apply all power tweaks and delete default power plans
echo.                                          - Fixed some spelling Errors
echo.                                          - Fixed some exit/skip buttons not working
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.         
echo.                                                                                    %p%[%w%M%p%]%w% Back to menu 
echo.
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
set /p input=:
if /i %input% == M pause goto menu
) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto patchnotes


:FR
cls
echo.
echo.
echo.
echo.                                           %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                 %p%███████╗██╗██╗  ██╗███████╗ ██████╗    ██╗██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗ ██████╗
echo.                                                 %p%██╔════╝██║╚██╗██╔╝██╔════╝██╔════╝   ██╔╝██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██╔════╝
echo.                                                 %p%█████╗  ██║ ╚███╔╝ █████╗  ╚█████╗   ██╔╝ ██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ╚█████╗ 
echo.                                                 %p%██╔══╝  ██║ ██╔██╗ ██╔══╝   ╚═══██╗ ██╔╝  ██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║    ╚═══██╗
echo.                                                 %p%██║     ██║██╔╝╚██╗███████╗██████╔╝██╔╝   ██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██████╔╝
echo.                                                 %p%╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝    ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═════╝ 
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                                                                                                                                 
echo.                                                           %p%[%w%1%p%]%w% Quick Fixes                                  %p%[%w%2%p%]%w% Revert Category                                   
echo.                                                                                                                                                                 
echo.                                                                                                                                                                 
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                     %W% Quick fixes allows you to revert a specific tweak without having to revert an entire category         
echo.                                                        %W% In the Revert category you can revert each category one by one, or all tweaks at once      
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 
 
set /p input=:
if /i %input% == 1 pause goto Fixes
if /i %input% == 2 pause goto Reverts
) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto fr


:Reverts
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                   %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                             %p%       ██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗
echo.                                                             %p%       ██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝
echo.                                                             %p%       ██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   
echo.                                                             %p%       ██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   
echo.                                                             %p%       ██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   
echo.                                                             %p%       ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%                                                 
echo.                                         If you want to revert absolutely everything, using a restore point is better, pressing A works too
echo.
echo.                                                                            %p%[%w%A%p%]%w% Revert All                              
echo.
echo.                
echo.                                                                       %p%[%w%1%p%]%w% Revert General Category                                
echo.                                                                                                                          
echo.                                                                       %p%[%w%2%p%]%w% Revert Mouse and keyboard Category                                
echo.                                                                                                                      
echo.                                                                       %p%[%w%4%p%]%w% Revert Ram/Memory Category                                                
echo.                                                                                                                        
echo.                                                                       %p%[%w%5%p%]%w% Revert GPU Category                                         
echo.                                                                                                                       
echo.                                                                       %p%[%w%6%p%]%w% Revert CPU Category     
echo.
echo.                                                                       %p%[%w%7%p%]%w% Revert Power Category
echo.
echo.                                                                       %p%[%w%8%p%]%w% Revert Debloat Category
echo.
echo.                                                                       %p%[%w%9%p%]%w% Revert Storage Category
echo.
echo.                                                                       %p%[%w%10%p%]%w% Revert Network Utility 
echo.
echo.
echo.                                                                            %p%[%w%M%p%]%w% Back to menu                                         
echo.                                                                              
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.                                                                %W% Allows you to revert all tweaks from certain categories
echo.                                               %W% Its still recommended to use a restore point if you want to get rid of the tweaks completely
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 pause goto revertgeneral
if /i %input% == 2 pause goto revertkeyboard
if /i %input% == 3 pause goto revertwindows
if /i %input% == 4 pause goto revertram
if /i %input% == 5 pause goto revertgpu
if /i %input% == 6 pause goto revertcpu
if /i %input% == 7 pause goto revertpower
if /i %input% == 8 pause goto revertdebloat
if /i %input% == 9 pause goto revertstorage
if /i %input% == 10 pause goto revertnet
if /i %input% == 11 pause goto revertnet
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto :e


:exit
cls
echo.
echo.
echo.
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Make sure to restart your PC so the tweaks properly apply. Press "OK" to exit, Thank you for using the exm utility!', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
echo. %W% Press any key to exit!
pause > nul
cls
exit



:d12
cls
echo. 
echo.                                              %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                                  %p%██╗   ██╗███╗  ██╗██╗███╗  ██╗ ██████╗████████╗ █████╗ ██╗     ██╗     
echo.                                                                  %p%██║   ██║████╗ ██║██║████╗ ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
echo.                                                                  %p%██║   ██║██╔██╗██║██║██╔██╗██║╚█████╗    ██║   ███████║██║     ██║     
echo.                                                                  %p%██║   ██║██║╚████║██║██║╚████║ ╚═══██╗   ██║   ██╔══██║██║     ██║     
echo.                                                                  %p%╚██████╔╝██║ ╚███║██║██║ ╚███║██████╔╝   ██║   ██║  ██║███████╗███████╗
echo.                                                                  %p% ╚═════╝ ╚═╝  ╚══╝╚═╝╚═╝  ╚══╝╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
echo.                                                           %b%"════════════════════════════════════════════════════════════════════════════════"%w%
echo.      
echo.                                                                             %p%[%w%1%p%]%w% Uninstall Windows Preinstalled Apps    
echo.  
echo.                                                                             %p%[%w%2%p%]%w% Uninstall Useless Apps Via settings
echo.
echo.                                                                             %p%[%w%3%p%]%w% Uninstall Microsoft edge
echo.
echo.                                                                             %p%[%w%4%p%]%w% Uninstall Cortana / Copilot
echo.
echo.
echo.                                                                                        %p%[%w%R%p%]%w% Revert                          
echo.                                                                                           
echo.                                                                                        %p%[%w%M%p%]%w% Back to menu                               
echo.                                                                                          
echo.                                                           %b%"════════════════════════════════════════════════════════════════════════════════"
echo.                                                                        %W% Allows you to uninstall useless preinstalled windows apps 
echo.                                                           %b%"════════════════════════════════════════════════════════════════════════════════"
echo.               
set /p input=:
if /i %input% == 1 pause goto U1
if /i %input% == 2 pause goto U2
if /i %input% == 3 pause goto U3
if /i %input% == 4 pause goto U4
if /i %input% == R pause goto revertapps
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto d12

:u4
echo %w% - Uninstalling Cortana / Copilot%b%

chcp 437 >nul 2>&1 
timeout /t 1 /nobreak > NUL
Powershell -Command "Get-appxpackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
Powershell -Command "Get-AppxPackage Microsoft.Windows.Ai.Copilot.Provider | Remove-AppxPackage" 
timeout /t 1 /nobreak > NUL
chcp 65001 >nul 2>&1 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu


:u3
cls
echo.
echo.                             %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                                 %p% ███████╗██████╗  ██████╗ ███████╗
echo.                                                                 %p% ██╔════╝██╔══██╗██╔════╝ ██╔════╝
echo.                                                                 %p% █████╗  ██║  ██║██║  ██╗ █████╗  
echo.                                                                 %p% ██╔══╝  ██║  ██║██║  ╚██╗██╔══╝  
echo.                                                                 %p% ███████╗██████╔╝╚██████╔╝███████╗
echo.                                                                 %p% ╚══════╝╚═════╝  ╚═════╝ ╚══════╝ 
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                
echo.                                          %p%[%w%1%p%]%w% Uninstall microsoft edge         %p%[%w%2%p%]%w% Install microsoft edge
echo.                                                                                 
echo.   
echo.                                           %p%%p%%p%%p%                   %p%[%w%M%p%]%w% Skip and go Back to menu   
echo.
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                  %W%Completely uninstalls microsoft edge, there is a revert for this
echo.                                                      %W% But unfortunatly the revert doesnt work 100% of the time
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo. 
echo. 

set /p input=:
if /i %input% == 1 pause goto edgingoff
if /i %input% == 2 pause goto edgingon
if /i %input% == M CLS & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect 

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenue
:RedirectMenu
cls
pause goto :edging

:edgingoff
echo %w% - Disabling Microsoft edging  %b%
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im msedge.exe /fi "IMAGENAME eq msedge.exe" >nul 2>&1
taskkill /f /im msedge.exe /fi "IMAGENAME eq msedge.exe" >nul 2>&1
echo Deleting Edge Directories.
rd /s /q "C:\Program Files (x86)\Microsoft\Edge" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeCore" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeWebView" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\Temp" >nul 2>&1
echo Deleting Microsoft Edge Shortcuts.
del "C:\Users\Public\Desktop\Microsoft Edge.lnk" >nul 2>&1
del "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" >nul 2>&1
del "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Microsoft Edge.lnk" >nul 2>&1
cls


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto d12

:edgingon
echo %w% - Reinstalling Microsoft edge %g%(may not work 100% of the time, if it doesnt, use a restore point) %b%
chcp 437 >nul 2>&1 
powershell:Start-Process -FilePath winget -ArgumentList "install --force  --accept-source-agreements --accept-package-agreements --silent Microsoft.Edge " -NoNewWindow
chcp 65001 >nul 2>&1 
cls
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto d12

:revertapps
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 
echo %w% - Redownload default windows apps %g%(Errors may show, thats because the app that the command is trying to install is already installed, so dont worry)%b%
chcp 437 > nul
Powershell -Command "Get-AppxPackage -allusers | foreach {Add-AppxPackage -register “$($_.InstallLocation)\appxmanifest.xml” -DisabledevelopmentMode}"

powershell:Start-Process -FilePath winget -ArgumentList "install --force  --accept-source-agreements --accept-package-agreements --silent Microsoft.Edge " -NoNewWindow
chcp 65001 > nul
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
zecho.
pause > nul
cls
pause goto menu

:U2
start ms-settings:appsfeatures
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto d12

:U1
chcp 437 >nul 2>&1
CLS
echo.
echo.
echo [                             0%                            ]
echo.
echo %w%- Uninstalling BingWeather %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage}
CLS

echo.
echo.
echo [==                           3.5%                          ]
echo.
echo %w%- Uninstalling GetHelp  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage}
CLS

echo.
echo.
echo [====                         7.0%                          ]
echo.
echo %w%- Uninstalling Getstarted  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=====                        10.5%                         ]
echo.
echo %w%- Uninstalling Messaging  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage}
CLS

echo.
echo.
echo [======                       14.5%                         ]
echo.
echo %w%- Uninstalling Messaging  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage}
CLS

echo.
echo.
echo [========                     18.0%                         ]
echo.
echo %w%- Uninstalling MicrosoftSolitaireCollection %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage}
CLS 

echo.
echo.
echo [==========                   21.5%                         ]
echo.
echo %w%- Uninstalling MicrosoftStickyNotes %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage}
CLS

echo.
echo.
echo [============                 24.5%                         ]
echo.
echo %w%- Uninstalling MixedReality.Portal %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage}
CLS

echo.
echo.
echo [==============               27.0%                         ]
echo.
echo %w%- Uninstalling OneConnect %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===============              28.5%                         ]
echo.
echo %w%- Uninstalling People %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.People* | Remove-AppxPackage}
CLS

echo.
echo.
echo [==================           30.5%                         ]
echo.
echo %w%- Uninstalling Print3D %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===================           32.0%                        ]
echo.
echo %w%- Uninstalling SkypeApp %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage}
CLS

echo.
echo.
echo [====================         34.0%                         ]
echo.
echo %w%- Uninstalling WindowsAlarms %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=====================        35.2%                         ]
echo.
echo %w%- Uninstalling WindowsCamera %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage}
CLS

echo.
echo.
echo [======================       37.5%                         ]
echo.
echo %w%- Uninstalling windowscommunicationsapps %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=======================      38.8%                         ]
echo.
echo %w%- Uninstalling WindowsMaps %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage}
CLS

echo.
echo.
echo [========================     40.0%                         ]
echo.
echo %w%- Uninstalling WindowsFeedbackHub %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=========================    42.2%                         ]
echo.
echo %w%- Uninstalling WindowsSoundRecorder %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=========================    44.5%                         ]
echo.
echo %w%- Uninstalling YourPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===========================  47.0%                         ]
echo.
echo %w%- Uninstalling ZuneMusic %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===========================  49.0%                         ]
echo.
echo %w%- Uninstalling HEIFImageExtension %g% (Removing Preinstalled Apps) %b%

PowerShell -command "& {Get-AppxPackage *Microsoft.HEIFImageExtension* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================51.0%                         ]
echo.
echo %w%- Uninstalling WebMediaExtensions %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WebMediaExtensions* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================53.5%==                       ]
echo.
echo %w%- Uninstalling WebpImageExtension %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WebpImageExtension* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================56.7%====                     ]
echo.
echo %w%- Uninstalling 3dBuilder %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.3dBuilder* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================59.5%======                   ]
echo.
echo %w%- Uninstalling bing %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *bing* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================62.0%========                 ]
echo.
echo %w%- Uninstalling bingfinance %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *bingfinance* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================65.5%==========               ]
echo.
echo %w%- Uninstalling bingsports %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *bingsports* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================69.0%============             ]
echo.
echo %w%- Uninstalling CommsPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *CommsPhone* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================75.0 %=============           ]
echo.
echo %w%- Uninstalling Drawboard PDF %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *Drawboard PDF* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================79.5%%===============         ]
echo.
echo %w%- Uninstalling Sway %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *Sway* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================85.0%%===================     ]
echo.
echo %w%- Uninstalling WindowsAlarms %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsAlarms* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================90.5%%=====================   ]
echo.
echo %w%- Uninstalling WindowsPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================93.5%%=====================   ]
echo.
echo %w%- Uninstalling WindowsPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================100.0%%=======================]
echo %w%- Finished! %b%
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto d12

:net
:11
:restorepoint2
cls
echo.
echo.
echo.                                           %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.                                                  
echo.                                                    %p%██████╗ ███████╗ ██████╗████████╗ █████╗ ██████╗ ███████╗  ██████╗  █████╗ ██╗███╗  ██╗████████╗         
echo.                                                    %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗ ██║╚══██╔══╝        
echo.                                                    %p%██████╔╝█████╗  ╚█████╗    ██║   ██║  ██║██████╔╝█████╗    ██████╔╝██║  ██║██║██╔██╗██║   ██║            
echo.                                                    %p%██╔══██╗██╔══╝   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝    ██╔═══╝ ██║  ██║██║██║╚████║   ██║           
echo.                                                    %p%██║  ██║███████╗██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗  ██║     ╚█████╔╝██║██║ ╚███║   ██║           
echo.                                                    %p%╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝  ╚═╝      ╚════╝ ╚═╝╚═╝  ╚══╝   ╚═╝           
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                 %w% Do you want to Create a Restore Point before doing network tweaks?                                 
echo.                                                                                                                                                                
echo.                                                                                                                                                                 
echo.                                                         %p%[%w%1%p%]%w% Make A restore Point                           %p%[%w%2%p%]%w% Skip restore point
echo.
echo.
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                     %W% Allows you to revert your PC to the same settings as it was when making the restore point         
echo.                                                    %W% You can use a restore point to revert the tweaks made by the network utility, if you wish so                
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 
 
set /p input=:
if /i %input% == 1 pause goto createRP2
if /i %input% == 2 pause goto nmenu
) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto restorepoint2


:createRP2
cls 
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗████████╗ █████╗ ██████╗ ███████╗  ██████╗  █████╗ ██╗███╗  ██╗████████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗ ██║╚══██╔══╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗    ██║   ██║  ██║██████╔╝█████╗    ██████╔╝██║  ██║██║██╔██╗██║   ██║   
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝    ██╔═══╝ ██║  ██║██║██║╚████║   ██║   
echo.                                                                  %p%██║  ██║███████╗██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗  ██║     ╚█████╔╝██║██║ ╚███║   ██║   
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝  ╚═╝      ╚════╝ ╚═╝╚═╝  ╚══╝   ╚═╝   
echo.
echo. %w% Creating a restore point... %b%                                                       
chcp 437 >nul 2>&1
powershell "Checkpoint-Computer -Description 'EXM Network utility'
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Restore point completed successfully, press "OK" to continue', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1 


:nmenu
cls
echo.
echo.
echo.                                            %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                     %p%  ███████╗██╗  ██╗███╗   ███╗  ███╗  ██╗███████╗████████╗  ██╗   ██╗████████╗██╗ ██╗     ██╗████████╗██╗   ██╗  ██████╗     █████╗ 
echo.                                     %p%  ██╔════╝╚██╗██╔╝████╗ ████║  ████╗ ██║██╔════╝╚══██╔══╝  ██║   ██║╚══██╔══╝██║ ██║     ██║╚══██╔══╝╚██╗ ██╔╝  ╚════██╗   ██╔══██╗
echo.                                     %p%  █████╗   ╚███╔╝ ██╔████╔██║  ██╔██╗██║█████╗     ██║     ██║   ██║   ██║   ██║ ██║     ██║   ██║    ╚████╔╝    █████╔╝   ██║  ██║
echo.                                     %p%  ██╔══╝   ██╔██╗ ██║╚██╔╝██║  ██║╚████║██╔══╝     ██║     ██║   ██║   ██║   ██║ ██║     ██║   ██║     ╚██╔╝     ╚═══██╗   ██║  ██║
echo.                                     %p%  ███████╗██╔╝╚██╗██║ ╚═╝ ██║  ██║ ╚███║███████╗   ██║     ╚██████╔╝   ██║   ██║ ███████╗██║   ██║      ██║     ██████╔╝██╗╚█████╔╝
echo.                                     %p%  ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝  ╚══╝╚══════╝   ╚═╝      ╚═════╝    ╚═╝   ╚═╝ ╚══════╝╚═╝   ╚═╝      ╚═╝     ╚═════╝ ╚═╝ ╚════╝ 
echo.                                     %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w% 
echo.    
echo.                                                                        %p%%w%%p%%w%                %p%[%w%A%p%]%w% Apply all %g%(1-14) 
echo.         
echo.                                                    %p%[%w%1%p%]%w% Optimize DNS priorities                                  %p%[%w%2%p%]%w% Disable Network Throttling Index
echo.
echo.                                                    %p%[%w%3%p%]%w% Set MaxUserPort and DefaultTTL                           %p%[%w%4%p%]%w% Tweak basic TCP Settings
echo.
echo.                                                    %p%[%w%5%p%]%w% Set TcpTimedWaitDelay                                    %p%[%w%6%p%]%w% Disable network limiting
echo.
echo.                                                    %p%[%w%7%p%]%w% Tweak MTU Settings                                       %p%[%w%8%p%]%w% Configure offload and network settings 
echo.
echo.                                                    %p%[%w%9%p%]%w% Disable IPv6                                             %p%[%w%10%p%]%w% Disable Internet Probing
echo.                                                                                                                                                                                   
echo.                                                    %p%[%w%11%p%]%w% Disable Internet addons                                 %p%[%w%12%p%]%w% Disable Nagiles Algorithm
echo. 
echo.                                                    %p%[%w%13%p%]%w% Enable Task Offload                                     %p%[%w%14%p%]%w% Optimize MLD, ICMP Chimney, DCA, and More
echo.
echo.                                                    %p%[%w%15%p%]%w% Set a QOS Policy                                        %p%[%w%16%p%]%w% Optimize Network adapter Settings %g%(Ethernet Only)
echo.
echo.                                      %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w% 
echo. 
echo.                                                    %p%[%w%B%p%]%w% Bufferbloat Test                                         %p%[%w%T%p%]%w% Tutorial
echo.
echo.                                                    %p%[%w%R%p%]%w% Revert All                                               %p%[%w%M%p%]%w% Back to menu                                                       
echo.
echo.                                                                                  %p%%p%%p%%g%  EXM TWEAKS, S.R.O. ® * Updated 1st of July 2025                   
echo.                                      %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w% 
echo.                                                                 
echo.

set /p input=:
if /i %input% == A pause goto nALL
if /i %input% == 1 pause goto n1
if /i %input% == 2 pause goto n2
if /i %input% == 3 pause goto n3
if /i %input% == 4 pause goto n4
if /i %input% == 5 pause goto n5
if /i %input% == 6 pause goto n6
if /i %input% == 7 pause goto n7
if /i %input% == 8 pause goto n8
if /i %input% == 9 pause goto n9
if /i %input% == 10 pause goto n10
if /i %input% == 11 pause goto n11
if /i %input% == 12 pause goto n12
if /i %input% == 13 pause goto n13
if /i %input% == 14 pause goto n14
if /i %input% == 15 pause goto qos1
if /i %input% == 16 pause goto n16

if /i %input% == T start https://www.youtube.com/watch?v=GOwRQbtTh0Y&t=1s&ab_channel=exm
if /i %input% == R pause goto Revertnet
if /i %input% == B START https://www.waveform.com/tools/bufferbloat
if /i %input% == M pause goto Menu

) ELSE (
echo %w%- Invalid Input %b% & pause goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
pause goto RedirectMenu

:RedirectMenu
cls
pause goto nmenu

:n5
echo %w% Set tcp timed delay%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto NMenu

:nALL
cls
echo. 
echo. 
echo. 
echo.                                                                %p%███╗  ██╗███████╗████████╗ ██╗       ██╗ █████╗ ██████╗ ██╗  ██╗
echo.                                                                %p%████╗ ██║██╔════╝╚══██╔══╝ ██║  ██╗  ██║██╔══██╗██╔══██╗██║ ██╔╝
echo.                                                                %p%██╔██╗██║█████╗     ██║    ╚██╗████╗██╔╝██║  ██║██████╔╝█████═╝ 
echo.                                                                %p%██║╚████║██╔══╝     ██║     ████╔═████║ ██║  ██║██╔══██╗██╔═██╗ 
echo.                                                                %p%██║ ╚███║███████╗   ██║     ╚██╔╝ ╚██╔╝ ╚█████╔╝██║  ██║██║ ╚██╗
echo.                                                                %p%╚═╝  ╚══╝╚══════╝   ╚═╝      ╚═╝   ╚═╝   ╚════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
echo. 
echo. 
echo. 
echo %w% Enabling Task Offloads%b%
netsh int ip set global taskoffload=enabled >nul 2>&1
echo.
echo %w% - Setting Network Throttling Index%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 0xffffffff /f
echo.
echo %w% - Setting MaxUserPort, TcpTimedWaitDelay, and DefaultTTL...%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d 64 /f
echo.
echo %w% - Configuring TCP settings and MTU with netsh %g%(it will show an error on 2 of them if you have wifi or ethernet disabled)%b%
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
echo.
chcp 437 >nul 2>&1
echo %w% - Configuring offload and network settings %b%
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing disabled
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSideScaling disabled
PowerShell.exe Set-NetOffloadGlobalSetting -Chimney disabled
PowerShell.exe Disable-NetAdapterLso -Name *
PowerShell.exe Disable-NetAdapterChecksumOffload -Name *
chcp 65001 >nul 2>&1
echo.
echo %w% - Disabling ipv6%b%
reg add "HKLM\SYSTEM\ControlSet001\services\TCPIP6\Parameters" /v "DisabledComponents" /t REG_DWORD /d 255 /f
echo.
echo %w%- Disabling Active Probing%b%
reg add "HKLM\System\ControlSet001\services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d 0 /f
echo.
echo %w%- Disabling Internet addons
rem Set registry values for Ext Settings
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /t REG_SZ /d "*" /f

rem Set registry values for Ext Stats
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF90-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF91-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF94-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{333C7BC4-460F-11D0-BC04-0080C7055A83}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{373984C9-B845-449B-91E7-45AC83036ADE}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{6BF52A52-394A-11D3-B153-00C04F79FAA6}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2049-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2051-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A05-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A06-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A07-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A08-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A0A-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{D2517915-48CE-4286-970F-921E881B8C5C}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{EE09B103-97E0-11CF-978F-00A02463E06F}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F32-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F33-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F34-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F35-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F36-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F39-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
echo.
echo %w% - Disabling Nagiles algorithm %b%
sc config Winmgmt start= demand >nul 2>&1
sc start Winmgmt >nul 2>&1

echo %w% - Enabling TCPNoDelay %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /t REG_DWORD /d "1" /f
)

echo %w% - Enabling TCP Ack Frequency %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /t REG_DWORD /d "1" /f
)

echo %w% - Disabling TCP Del AckTicks %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /t REG_DWORD /d "0" /f
)

echo.
echo %w% - Disabling TCP heuristics / Disabling Network Limiting %b%
netsh int tcp set heuristics Disabled

:n142
cls
echo.
echo.                                      %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                               %p%███╗   ███╗██╗     ██████╗    █████╗ ███╗  ██╗██████╗   ██╗ █████╗ ███╗   ███╗██████╗ 
echo.                                               %p%████╗ ████║██║     ██╔══██╗  ██╔══██╗████╗ ██║██╔══██╗  ██║██╔══██╗████╗ ████║██╔══██╗
echo.                                               %p%██╔████╔██║██║     ██║  ██║  ███████║██╔██╗██║██║  ██║  ██║██║  ╚═╝██╔████╔██║██████╔╝
echo.                                               %p%██║╚██╔╝██║██║     ██║  ██║  ██╔══██║██║╚████║██║  ██║  ██║██║  ██╗██║╚██╔╝██║██╔═══╝ 
echo.                                               %p%██║ ╚═╝ ██║███████╗██████╔╝  ██║  ██║██║ ╚███║██████╔╝  ██║╚█████╔╝██║ ╚═╝ ██║██║     
echo.                                               %p%╚═╝     ╚═╝╚══════╝╚═════╝   ╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝   ╚═╝ ╚════╝ ╚═╝     ╚═╝╚═╝     
echo.                                              %b%"═══════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                               
echo.
echo.                                                 %p%[%w%1%p%]%w% Optimize MLD and ICMP       %p%[%w%2%p%]%w% Revert MLD and ICMP Optimizations
echo. 
echo.
echo.                                                                              %p%[%w%M%p%]%w% Back to menu
echo. 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                    THIS TWEAK BREAKS FIVEM, IF YOU ARE NOT ABLE TO RUN FIVEM USE THE REVERT FUNCTION
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 pause goto n14ON
if /i %input% == 2 pause goto n14OFF
if /i %input% == M pause goto nmenu
) ELSE (
echo %w%- Invalid Input %b% & pause goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto n14

:n14ON
echo %w% Optimizing MLD and ICMP%b%
netsh int ip set global dhcpmediasense=disabled >nul 2>&1
netsh int ip set global mediasenseeventlog=disabled >nul 2>&1
netsh int ip set global mldlevel=none >nul 2>&1
netsh int ip set global icmpredirects=disabled >nul 2>&1
netsh int tcp set global chimney=enabled >nul 2>&1
netsh int tcp set global dca=enabled >nul 2>&1
netsh int tcp set global netdma=disabled >nul 2>&1
netsh int tcp set global rsc=disabled >nul 2>&1
netsh int tcp set global maxsynretransmissions=2 >nul 2>&1
netsh int tcp set global timestamps=disabled >nul 2>&1
netsh int tcp set global ecncapability=disabled >nul 2>&1
netsh int tcp set heuristics disabled >nul 2>&1
netsh int tcp set heuristics wsh=disabled >nul 2>&1
netsh int tcp set security mpp=disabled >nul 2>&1
netsh int tcp set security profiles=disabled >nul 2>&1

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto NMenu

:n14OFF
echo %w% Reverting the Optimization of MLD and ICMP%b%
netsh int ip set global dhcpmediasense=enabled >nul 2>&1
netsh int ip set global mediasenseeventlog=enabled >nul 2>&1
netsh int ip set global mldlevel=default >nul 2>&1
netsh int ip set global icmpredirects=enabled >nul 2>&1
netsh int tcp set global chimney=disabled >nul 2>&1
netsh int tcp set global dca=disabled >nul 2>&1
netsh int tcp set global netdma=enabled >nul 2>&1
netsh int tcp set global rsc=enabled >nul 2>&1
netsh int tcp set global maxsynretransmissions=5 >nul 2>&1
netsh int tcp set global timestamps=enabled >nul 2>&1
netsh int tcp set global ecncapability=enabled >nul 2>&1
netsh int tcp set heuristics enabled >nul 2>&1
netsh int tcp set heuristics wsh=enabled >nul 2>&1
netsh int tcp set security mpp=enabled >nul 2>&1
netsh int tcp set security profiles=enabled >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto NMenu


:revertnet
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.

:: Addons
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF90-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF91-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF94-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{333C7BC4-460F-11D0-BC04-0080C7055A83}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{373984C9-B845-449B-91E7-45AC83036ADE}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{6BF52A52-394A-11D3-B153-00C04F79FAA6}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2049-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2051-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A05-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A06-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A07-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A08-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A0A-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{D2517915-48CE-4286-970F-921E881B8C5C}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{EE09B103-97E0-11CF-978F-00A02463E06F}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F32-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F33-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F34-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F35-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F36-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F39-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /f >nul 2>&1

::DnsPriority
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /f >nul 2>&1

::Network Throttling Index
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /f >nul 2>&1

:: MaxUserPort, TcpTimedWaitDelay, and DefaultTTL
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /f >nul 2>&1

::TCP Hueretics
netsh int tcp set heuristics Enabled >nul 2>&1

:: TCP settings and MTU with netsh
netsh int tcp set supplemental internet congestionprovider=default >nul 2>&1
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1492 store=persistent >nul 2>&1
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1280 store=persistent >nul 2>&1
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent >nul 2>&1
netsh interface ipv6 set subinterface "Ethernet" mtu=1280 store=persistent >nul 2>&1

:: Active Probing
reg add "HKLM\System\ControlSet001\services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d 1 /f >nul 2>&1

chcp 65001 >nul 2>&1
:: Disable Task Offloads
netsh int ip set global taskoffload=enabled >nul 2>&1

::  offload and network settings 
chcp 437 >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing enabled >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSideScaling enabled >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -Chimney enabled >nul 2>&1
PowerShell.exe Enable-NetAdapterLso -Name * >nul 2>&1
PowerShell.exe Enable-NetAdapterChecksumOffload -Name * >nul 2>&1
chcp 65001 >nul 2>&1

:: Re-enable Nagle's Algorithm, reset Interface Metric
echo %w% - Enabling TCPNoDelay %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /f
)

echo %w% - Enabling TCP Ack Frequency %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /f
)

echo %w% - Disabling TCP Del AckTicks %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /f
)

:: MLD
netsh int ip set global dhcpmediasense=enabled >nul 2>&1
netsh int ip set global mediasenseeventlog=enabled >nul 2>&1
netsh int ip set global mldlevel=default >nul 2>&1
netsh int ip set global icmpredirects=enabled >nul 2>&1
netsh int tcp set global chimney=disabled >nul 2>&1
netsh int tcp set global dca=disabled >nul 2>&1
netsh int tcp set global netdma=enabled >nul 2>&1
netsh int tcp set global rsc=enabled >nul 2>&1
netsh int tcp set global maxsynretransmissions=5 >nul 2>&1
netsh int tcp set global timestamps=enabled >nul 2>&1
netsh int tcp set global ecncapability=enabled >nul 2>&1
netsh int tcp set heuristics enabled >nul 2>&1
netsh int tcp set heuristics wsh=enabled >nul 2>&1
netsh int tcp set security mpp=enabled >nul 2>&1
netsh int tcp set security profiles=enabled >nul 2>&1

for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
    reg delete "%%n" /v "AdvancedEEE" /f
    reg delete "%%n" /v "*EEE" /f
    reg delete "%%n" /v "EEE" /f
    reg delete "%%n" /v "EnablePME" /f
    reg delete "%%n" /v "EEELinkAdvertisement" /f

    reg delete "%%n" /v "AutoPowerSaveModeEnabled" /f
    reg delete "%%n" /v "DisableDelayedPowerUp" /f
    reg delete "%%n" /v "AutoDisableGigabit" /f
    reg delete "%%n" /v "EnableGreenEthernet" /f
    reg delete "%%n" /v "EnableSavePowerNow" /f
    reg delete "%%n" /v "EnablePowerManagement" /f
    reg delete "%%n" /v "NicAutoPowerSaver" /f
    reg delete "%%n" /v "PowerDownPll" /f
    reg delete "%%n" /v "PowerSavingMode" /f
    reg delete "%%n" /v "ReduceSpeedOnPowerDown" /f
    reg delete "%%n" /v "S5NicKeepOverrideMacAddrV2" /f

    reg delete "%%n" /v "EnableDynamicPowerGating" /f
    reg delete "%%n" /v "EnableConnectedPowerGating" /f

    reg delete "%%n" /v "GigaLite" /f
    reg delete "%%n" /v "ULPMode" /f

    reg delete "%%n" /v "EnableWakeOnLan" /f
    reg delete "%%n" /v "WakeOnDisconnect" /f
    reg delete "%%n" /v "*WakeOnMagicPacket" /f
    reg delete "%%n" /v "S5WakeOnLan" /f
    reg delete "%%n" /v "*WakeOnPattern" /f
    reg delete "%%n" /v "WakeOnLink" /f
    reg delete "%%n" /v "WolShutdownLinkSpeed" /f

    reg delete "%%n" /v "JumboPacket" /f

    reg delete "%%n" /v "TransmitBuffers" /f
    reg delete "%%n" /v "ReceiveBuffers" /f

    reg delete "%%n" /v "IPChecksumOffloadIPv4" /f
    reg delete "%%n" /v "LsoV1IPv4" /f
    reg delete "%%n" /v "LsoV2IPv4" /f
    reg delete "%%n" /v "LsoV2IPv6" /f
    reg delete "%%n" /v "PMARPOffload" /f
    reg delete "%%n" /v "PMNSOffload" /f
    reg delete "%%n" /v "TCPChecksumOffloadIPv4" /f
    reg delete "%%n" /v "TCPChecksumOffloadIPv6" /f
    reg delete "%%n" /v "UDPChecksumOffloadIPv6" /f
    reg delete "%%n" /v "UDPChecksumOffloadIPv4" /f

    reg delete "%%n" /v "RSS" /f
	reg delete "%%n" /v "*FlowControl" /f 
	reg delete "%%n" /v "FlowControlCap" /f
	reg delete "%%n" /v "RxAbsIntDelay" /f 
	reg delete "%%n" /v "TxIntDelay" /f 
	reg delete "%%n" /v "TxAbsIntDelay" /f 
	reg delete "%%n" /v "FatChannelIntolerant" /f 
)

netsh int tcp set global autotuninglevel=normal


echo.
echo.
echo.
echo.                                                                      %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                      %b%║%w% * Reverted all network tweaks, press any key to continue...   %b%║
echo.                                                                      %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto nmenu

:n13
echo %w% Enabling Task Offloads%b%
netsh int ip set global taskoffload=enabled >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto NMenu



:n8
echo %w% -Configuring offload and network settings %b%
chcp 437 >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing disabled
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSideScaling disabled
PowerShell.exe Set-NetOffloadGlobalSetting -Chimney disabled
PowerShell.exe Disable-NetAdapterLso -Name *
PowerShell.exe Disable-NetAdapterChecksumOffload -Name *
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto NMenu

:n14
cls
echo.
echo.                                  %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                               %p%███╗   ███╗██╗     ██████╗    █████╗ ███╗  ██╗██████╗   ██╗ █████╗ ███╗   ███╗██████╗ 
echo.                                               %p%████╗ ████║██║     ██╔══██╗  ██╔══██╗████╗ ██║██╔══██╗  ██║██╔══██╗████╗ ████║██╔══██╗
echo.                                               %p%██╔████╔██║██║     ██║  ██║  ███████║██╔██╗██║██║  ██║  ██║██║  ╚═╝██╔████╔██║██████╔╝
echo.                                               %p%██║╚██╔╝██║██║     ██║  ██║  ██╔══██║██║╚████║██║  ██║  ██║██║  ██╗██║╚██╔╝██║██╔═══╝ 
echo.                                               %p%██║ ╚═╝ ██║███████╗██████╔╝  ██║  ██║██║ ╚███║██████╔╝  ██║╚█████╔╝██║ ╚═╝ ██║██║     
echo.                                               %p%╚═╝     ╚═╝╚══════╝╚═════╝   ╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝   ╚═╝ ╚════╝ ╚═╝     ╚═╝╚═╝     
echo.                                              %b%"═══════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                               
echo.
echo.                                                 %p%[%w%1%p%]%w% Optimize MLD and ICMP       %p%[%w%2%p%]%w% Revert MLD and ICMP Optimizations
echo. 
echo.
echo.                                                                              %p%[%w%M%p%]%w% Back to menu
echo. 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                    THIS TWEAK BREAKS FIVEM, IF YOU ARE NOT ABLE TO RUN FIVEM USE THE REVERT FUNCTION
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 pause goto n14ON
if /i %input% == 2 pause goto n14OFF
if /i %input% == M pause goto nmenu
) ELSE (
echo %w%- Invalid Input %b% & pause goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto n14

:n14ON
echo %w% Optimizing MLD and ICMP%b%
netsh int ip set global dhcpmediasense=disabled >nul 2>&1
netsh int ip set global mediasenseeventlog=disabled >nul 2>&1
netsh int ip set global mldlevel=none >nul 2>&1
netsh int ip set global icmpredirects=disabled >nul 2>&1
netsh int tcp set global chimney=enabled >nul 2>&1
netsh int tcp set global dca=enabled >nul 2>&1
netsh int tcp set global netdma=disabled >nul 2>&1
netsh int tcp set global rsc=disabled >nul 2>&1
netsh int tcp set global maxsynretransmissions=2 >nul 2>&1
netsh int tcp set global timestamps=disabled >nul 2>&1
netsh int tcp set global ecncapability=disabled >nul 2>&1
netsh int tcp set heuristics disabled >nul 2>&1
netsh int tcp set heuristics wsh=disabled >nul 2>&1
netsh int tcp set security mpp=disabled >nul 2>&1
netsh int tcp set security profiles=disabled >nul 2>&1

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto NMenu

:n14OFF
echo %w% Reverting the Optimization of MLD and ICMP%b%
netsh int ip set global dhcpmediasense=enabled >nul 2>&1
netsh int ip set global mediasenseeventlog=enabled >nul 2>&1
netsh int ip set global mldlevel=default >nul 2>&1
netsh int ip set global icmpredirects=enabled >nul 2>&1
netsh int tcp set global chimney=disabled >nul 2>&1
netsh int tcp set global dca=disabled >nul 2>&1
netsh int tcp set global netdma=enabled >nul 2>&1
netsh int tcp set global rsc=enabled >nul 2>&1
netsh int tcp set global maxsynretransmissions=5 >nul 2>&1
netsh int tcp set global timestamps=enabled >nul 2>&1
netsh int tcp set global ecncapability=enabled >nul 2>&1
netsh int tcp set heuristics enabled >nul 2>&1
netsh int tcp set heuristics wsh=enabled >nul 2>&1
netsh int tcp set security mpp=enabled >nul 2>&1
netsh int tcp set security profiles=enabled >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto NMenu

:n1
echo %w% -  Setting DNS, Local, Hosts, and NetBT priorities...%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d 6 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d 5 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d 7 /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto NMenu

:n2
echo %w% - Disabling Network Throttling Index%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 0xffffffff /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto NMenu

:n3
echo %w% - Setting MaxUserPort, TcpTimedWaitDelay, and DefaultTTL...%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d 64 /f
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
echo.
pause > nul
cls
pause goto NMenu

:n4
chcp 437 >nul 2>&1
echo %w% - Configuring TCP settings with PowerShell%b%
PowerShell.exe Set-NetTcpSetting -SettingName internet -EcnCapability enabled
PowerShell.exe Set-NetTcpSetting -SettingName internet -Timestamps enabled
PowerShell.exe Set-NetTcpSetting -SettingName internet -MaxSynRetransmissions 2
PowerShell.exe Set-NetTcpSetting -SettingName internet -NonSackRttResiliency disabled
PowerShell.exe Set-NetTcpSetting -SettingName internet -InitialRto 2000
PowerShell.exe Set-NetTcpSetting -SettingName internet -MinRto 300
chcp 65001 >nul 2>&1
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
echo.
pause > nul
cls
pause goto NMenu

:n6
echo %w% - Disabling TCP heuristics / Disabling Network Limiting %b%
netsh int tcp set heuristics Disabled
PowerShell.exe Set-NetTCPSetting -SettingName internet -ScalingHeuristics disabled
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
echo.
pause > nul
cls
pause goto NMenu


:n9
chcp 437 >nul 2>&1
echo %w% - Disabling ipv6%b%
reg add "HKLM\SYSTEM\ControlSet001\services\TCPIP6\Parameters" /v "DisabledComponents" /t REG_DWORD /d 255 /f
chcp 65001 >nul 2>&1
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto NMenu


:n7
chcp 437 >nul 2>&1
echo %w% - Configuring TCP settings and MTU with netsh %b%
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
chcp 65001 >nul 2>&1
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto NMenu

:n12

echo %w% - Disabling Nagiles algorithm %b%
sc config Winmgmt start= demand >nul 2>&1
sc start Winmgmt >nul 2>&1

echo %w% - Enabling TCPNoDelay %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /t REG_DWORD /d "1" /f
)

echo %w% - Enabling TCP Ack Frequency %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /t REG_DWORD /d "1" /f
)

echo %w% - Disabling TCP Del AckTicks %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /t REG_DWORD /d "0" /f
)

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto NMenu

:n16
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('WARNING You can only use this if you are on ethernet, if you are on wifi, press "M" on the next page, 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1


:nicethernet
cls
echo.
echo.                                  %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                             %p% █████╗ ██████╗  █████╗ ██████╗ ████████╗███████╗██████╗ 
echo.                                                             %p%██╔══██╗██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
echo.                                                             %p%███████║██║  ██║███████║██████╔╝   ██║   █████╗  ██████╔╝
echo.                                                             %p%██╔══██║██║  ██║██╔══██║██╔═══╝    ██║   ██╔══╝  ██╔══██╗
echo.                                                             %p%██║  ██║██████╔╝██║  ██║██║        ██║   ███████╗██║  ██║
echo.                                                             %p%╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝        ╚═╝   ╚══════╝╚═╝  ╚═╝
echo.                                              %b%"═══════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                  ONLY DO THIS ON ETHERNET
echo.
echo.                                                   %p%[%w%1%p%]%w% Optimize NIC Settings       %p%[%w%2%p%]%w% Revert NIC settings
echo. 
echo.
echo.                                                                              %p%[%w%M%p%]%w% Back to menu
echo. 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                  Optimizes network interface card settings to decrease ping and help your network
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 pause goto nic
if /i %input% == 2 pause goto revertnic
if /i %input% == M pause goto nmenu
) ELSE (
echo %w%- Invalid Input %b% & pause goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto nicethernet

:revertnic
echo %w% - Reverting NIC Settings... %b%

for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
    reg delete "%%n" /v "AdvancedEEE" /f
    reg delete "%%n" /v "*EEE" /f
    reg delete "%%n" /v "EEE" /f
    reg delete "%%n" /v "EnablePME" /f
    reg delete "%%n" /v "EEELinkAdvertisement" /f

    reg delete "%%n" /v "AutoPowerSaveModeEnabled" /f
    reg delete "%%n" /v "DisableDelayedPowerUp" /f
    reg delete "%%n" /v "AutoDisableGigabit" /f
    reg delete "%%n" /v "EnableGreenEthernet" /f
    reg delete "%%n" /v "EnableSavePowerNow" /f
    reg delete "%%n" /v "EnablePowerManagement" /f
    reg delete "%%n" /v "NicAutoPowerSaver" /f
    reg delete "%%n" /v "PowerDownPll" /f
    reg delete "%%n" /v "PowerSavingMode" /f
    reg delete "%%n" /v "ReduceSpeedOnPowerDown" /f
    reg delete "%%n" /v "S5NicKeepOverrideMacAddrV2" /f

    reg delete "%%n" /v "EnableDynamicPowerGating" /f
    reg delete "%%n" /v "EnableConnectedPowerGating" /f

    reg delete "%%n" /v "GigaLite" /f
    reg delete "%%n" /v "ULPMode" /f

    reg delete "%%n" /v "EnableWakeOnLan" /f
    reg delete "%%n" /v "WakeOnDisconnect" /f
    reg delete "%%n" /v "*WakeOnMagicPacket" /f
    reg delete "%%n" /v "S5WakeOnLan" /f
    reg delete "%%n" /v "*WakeOnPattern" /f
    reg delete "%%n" /v "WakeOnLink" /f
    reg delete "%%n" /v "WolShutdownLinkSpeed" /f

    reg delete "%%n" /v "JumboPacket" /f

    reg delete "%%n" /v "TransmitBuffers" /f
    reg delete "%%n" /v "ReceiveBuffers" /f

    reg delete "%%n" /v "IPChecksumOffloadIPv4" /f
    reg delete "%%n" /v "LsoV1IPv4" /f
    reg delete "%%n" /v "LsoV2IPv4" /f
    reg delete "%%n" /v "LsoV2IPv6" /f
    reg delete "%%n" /v "PMARPOffload" /f
    reg delete "%%n" /v "PMNSOffload" /f
    reg delete "%%n" /v "TCPChecksumOffloadIPv4" /f
    reg delete "%%n" /v "TCPChecksumOffloadIPv6" /f
    reg delete "%%n" /v "UDPChecksumOffloadIPv6" /f
    reg delete "%%n" /v "UDPChecksumOffloadIPv4" /f

    reg delete "%%n" /v "RSS" /f
	reg delete "%%n" /v "*FlowControl" /f 
	reg delete "%%n" /v "FlowControlCap" /f
	reg delete "%%n" /v "RxAbsIntDelay" /f 
	reg delete "%%n" /v "TxIntDelay" /f 
	reg delete "%%n" /v "TxAbsIntDelay" /f 
	reg delete "%%n" /v "FatChannelIntolerant" /f 
)
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto NMenu

:nic
for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
    reg add "%%n" /v "AdvancedEEE" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "*EEE" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "EEE" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "EnablePME" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "DisabledelayedPowerUp" /t REG_SZ /d "2" /f 
	reg add "%%n" /v "AutoDisablingGigabit" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "EnablePowerManagement" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "NicAutoPowerSaver" /t REG_SZ /d "2" /f
	reg add "%%n" /v "PowerDownPll" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "PowerSavingMode" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "S5NicKeepOverrideMacAddrV2" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "EnabledynamicPowerGating" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "EnableConnectedPowerGating" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "GigaLite" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "ULPMode" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "EnableWakeOnLan" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "WakeOnDisconnect" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "S5WakeOnLan" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "*WakeOnPattern" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "WakeOnLink" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f 
	reg add "%%n" /v "JumboPacket" /t REG_SZ /d "1514" /f 
	reg add "%%n" /v "TransmitBuffers" /t REG_SZ /d "2048" /f 
	reg add "%%n" /v "ReceiveBuffers" /t REG_SZ /d "1024" /f 
	reg add "%%n" /v "IPChecksumOffloadIPv4" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "LsoV1IPv4" /t REG_SZ /d "0" /f  
	reg add "%%n" /v "LsoV2IPv4" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "LsoV2IPv6" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "PMARPOffload" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "PMNSOffload" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "TCPChecksumOffloadIPv4" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "TCPChecksumOffloadIPv6" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "UDPChecksumOffloadIPv6" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "UDPChecksumOffloadIPv4" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "RSS" /t REG_SZ /d "1" /f 
	reg add "%%n" /v "*NumRssQueues" /t REG_SZ /d "2" /f 
	reg add "%%n" /v "RSSProfile" /t REG_SZ /d "3" /f 
	reg add "%%n" /v "*FlowControl" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "FlowControlCap" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "RxAbsIntDelay" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "TxIntDelay" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "TxAbsIntDelay" /t REG_SZ /d "0" /f 
	reg add "%%n" /v "FatChannelIntolerant" /t REG_SZ /d "0" /f 
	)

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto NMenu

:n10
chcp 437 >nul 2>&1
echo %w%- Disabling Active Probing%b%
reg add "HKLM\System\ControlSet001\services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d 0 /f
chcp 65001 >nul 2>&1

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto NMenu

:n11
chcp 437 >nul 2>&1
echo %w%- Disabling Internet addons
rem Set registry values for Ext Settings
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /t REG_SZ /d "*" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /t REG_SZ /d "*" /f

rem Set registry values for Ext Stats
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF90-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF91-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF94-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{333C7BC4-460F-11D0-BC04-0080C7055A83}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{373984C9-B845-449B-91E7-45AC83036ADE}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{6BF52A52-394A-11D3-B153-00C04F79FAA6}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2049-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2051-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A05-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A06-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A07-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A08-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A0A-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{D2517915-48CE-4286-970F-921E881B8C5C}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{EE09B103-97E0-11CF-978F-00A02463E06F}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F32-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F33-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F34-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F35-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F36-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F39-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
chcp 65001 >nul 2>&1

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto NMenu







:8
:storage
cls
echo.
echo.                            %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                    %p% ██████╗████████╗ █████╗ ██████╗  █████╗  ██████╗ ███████╗   
echo.                                                    %p%██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔════╝ 
echo.                                                    %p%╚█████╗    ██║   ██║  ██║██████╔╝███████║██║  ██╗ █████╗          
echo.                                                    %p% ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══██║██║  ╚██╗██╔══╝    
echo.                                                    %p%██████╔╝   ██║   ╚█████╔╝██║  ██║██║  ██║╚██████╔╝███████╗     
echo.                                                    %p%╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝      
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                           
echo.                                                           %p%[%w%1%p%]%w% Trim/Defragment Drives     
echo. 
echo.                                                           %p%[%w%2%p%]%w% Enable User Write Cache
echo. 
echo.                                                           %p%[%w%3%p%]%w% Optimize NFTS 
echo.                                                                                
echo.                                                           %p%[%w%4%p%]%w% Disable SSD Power Savings %g%(SSD only)
echo.
echo.                                                           %p%[%w%5%p%]%w% Optimize FUSTIL Settings %g%(SSD only)
echo. 
echo. 
echo.                                                                       %p%[%w%M%p%]%w% Back to menu         
echo.                      
echo.                                                                       %p%[%w%R%p%]%w% Revert         
echo.  
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════"
echo.                                         %W% Trim and Defragment Your Driver and apply a few extra storage optimizations 
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════"
echo. 
set /p input=:
if /i %input% == 1 pause goto s1
if /i %input% == 2 pause goto s2
if /i %input% == 3 pause goto s3
if /i %input% == 4 pause goto s4
if /i %input% == 5 pause goto s5
if /i %input% == R pause goto revertstorage
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto 8

:revertstorage
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 
echo. 
echo %w% - Enabling SSD Power Savings %b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitLatencyMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdlePowerMw" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitEnergyMicroJoules" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitLatencyMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdlePowerMw" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleTimeLengthMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitEnergyMicroJoules" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitLatencyMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdlePowerMw" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleTimeLengthMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitEnergyMicroJoules" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitLatencyMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdlePowerMw" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleTimeLengthMs" /t REG_DWORD /f 

echo %w% - NFTS Tweaks%b%
fsutil behavior set memoryusage 1 >nul 2>&1
fsutil behavior set mftzone 1 >nul 2>&1
fsutil behavior set Disablinglastaccess 1 >nul 2>&1
fsutil behavior set Disabledeletenotify 1 >nul 2>&1
fsutil behavior set encryptpagingfile 0 >nul 2>&1

echo %w% - User Write Cache %b%
For /f "Delims=" %%k in ('Reg.exe Query HKLM\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
reg delete "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /f 
reg add "%%k\Device Parameters\Disk" /v CacheIsPowerProtected /t REG_DWORD /d 1 /f
)

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu

:s4
echo %w% - Disabling SSD Power Savings %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto 8

:s3
echo %w% - NFTS Tweaks %b%
fsutil behavior set memoryusage 2 >nul 2>&1
fsutil behavior set mftzone 4 >nul 2>&1
fsutil behavior set Disablinglastaccess 1 >nul 2>&1
fsutil behavior set Disabledeletenotify 1 >nul 2>&1
fsutil behavior set encryptpagingfile 0 >nul 2>&1

::putting this here so it shows applied successfully messages, because ppl think it doesnt apply
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto 8

:s5
echo %w% - Seting FSUTIL Settings%b%
fsutil behavior set disableLastAccess 0 >nul 2>&1
fsutil behavior set disable8dot3 1  >nul 2>&1
::putting this here so it shows applied successfully messages, because ppl think it doesnt apply
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto menu

:s1
echo %w% - Trimming/Defragmenting Boot Drive %G%(If it takes too long, feel free to close the utility and skip this, the tweaks save if you close so you can start where you left off) %b%
POWERSHELL "Optimize-Volume -DriveLetter C -ReTrim"
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.


pause > nul
cls
pause goto 8

:s2
echo %w% - Enabling User Write Cache %b%
For /f "Delims=" %%k in ('Reg.exe Query HKLM\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
reg add "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /t REG_DWORD /d 1 /f
reg add "%%k\Device Parameters\Disk" /v CacheIsPowerProtected /t REG_DWORD /d 1 /f
)

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto 8




:7war
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Note: If you want to revert anything, you can do it in our revert category on the main page of the utility', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1

:7
:Debloat
cls
echo.
echo.
echo.                                  %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                        %p%   ██████╗ ███████╗██████╗ ██╗      █████╗  █████╗ ████████╗     
echo.                                                        %p%   ██╔══██╗██╔════╝██╔══██╗██║     ██╔══██╗██╔══██╗╚══██╔══╝      
echo.                                                        %p%   ██║  ██║█████╗  ██████╦╝██║     ██║  ██║███████║   ██║       
echo.                                                        %p%   ██║  ██║██╔══╝  ██╔══██╗██║     ██║  ██║██╔══██║   ██║        
echo.                                                        %p%   ██████╔╝███████╗██████╦╝███████╗╚█████╔╝██║  ██║   ██║     
echo.                                                        %p%   ╚═════╝ ╚══════╝╚═════╝ ╚══════╝ ╚════╝ ╚═╝  ╚═╝   ╚═╝         
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                                                                                        
echo.                                                  %p%[%w%1%p%]%w% Disable GameDVR and XBOX            %p%[%w%2%p%]%w% Disable Telemetry                        
echo.
echo.                                                  %p%[%w%3%p%]%w% Toggle Bluetooth                    %p%[%w%4%p%]%w% Disable Printing and Maps 
echo.   
echo.                                                  %p%[%w%5%p%]%w% Toggle Mitigations                  %p%[%w%6%p%]%w% Disable Diagnostics and Error Reporting                           
echo.                                                                                                                               
echo.                                                  %p%[%w%7%p%]%w% Toggle Microsoft Store              %p%[%w%8%p%]%w% Disable Hyper-V %g%(Breaks virtual machines)
echo.
echo.                                                  %p%[%w%9%p%]%w% Disable Startup Apps                %p%[%w%10%p%]%w% Windows Update Blocker 
echo.
echo.                                                  %p%[%w%11%p%]%w% Disable Smart Screen               %p%[%w%12%p%]%w% Uninstall Useless Apps 
echo.
echo.                                                                                                                                                    
echo.                                                                                %p%[%w%M%p%]%w% Back to menu   
echo. 
echo.                                                                                %p%[%w%R%p%]%w% Revert                                           
echo.
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.                                                               %w% Uninstalls and Disables useless features
echo.                                               %w% Removes system bloatware which runs in the background taking up system resources 
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.

set /p input=:
if /i %input% == A pause goto alldebloat
if /i %input% == 1 pause goto d1
if /i %input% == 2 pause goto d2
if /i %input% == 3 pause goto d3
if /i %input% == 4 pause goto d4
if /i %input% == 5 pause goto d5
if /i %input% == 6 pause goto d6
if /i %input% == 7 pause goto d7
if /i %input% == 8 pause goto d8
if /i %input% == 9 pause goto d9
if /i %input% == 10 pause goto d10
if /i %input% == 11 pause goto d11
if /i %input% == 12 pause goto d12
if /i %input% == M cls & pause goto menu
if /i %input% == R pause goto revertdebloat
) ELSE (
echo Invalid Input & pause goto MisspellReirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu

:RedirectMenu

pause goto :Debloat

:d11
echo %w%- Disabling windows smart screen %b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f 
reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto debloat

:d9
cls
echo.
echo.
echo.
echo.                                            %p% █████╗ ██╗   ██╗████████╗ █████╗ ██████╗ ██╗   ██╗███╗  ██╗ ██████╗
echo.                                            %p%██╔══██╗██║   ██║╚══██╔══╝██╔══██╗██╔══██╗██║   ██║████╗ ██║██╔════╝
echo.                                            %p%███████║██║   ██║   ██║   ██║  ██║██████╔╝██║   ██║██╔██╗██║╚█████╗ 
echo.                                            %p%██╔══██║██║   ██║   ██║   ██║  ██║██╔══██╗██║   ██║██║╚████║ ╚═══██╗
echo.                                            %p%██║  ██║╚██████╔╝   ██║   ╚█████╔╝██║  ██║╚██████╔╝██║ ╚███║██████╔╝
echo.                                            %p%╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚══╝╚═════╝ 
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('In the autoruns app, make sure to go into the LOGON Category, press "OK" to continue', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1

start C:\exm\Autoruns.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto debloat

:d6
echo %w% - Disable Diagnostics %b%
sc config DPS start= auto
sc config DiagTrack start= demand 
sc config dmwappushservice start= demand 
sc config diagnosticshub.standardcollector.service start= demand 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Diagnostics\Performance" /v "DisablediagnosticTracing" /t REG_DWORD /d "0" /f >nul 2>&1 
reg add "HKLM\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "1" /f
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /Enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Enable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Enable
echo %w% - Disabling Windows Error Reporting%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto debloat


:d10
cls
echo.
echo.
echo.
echo.
echo.                                            %p%██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗  ██████╗ ██╗      █████╗  █████╗ ██╗  ██╗███████╗██████╗ 
echo.                                            %p%██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝  ██╔══██╗██║     ██╔══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗
echo.                                            %p%██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗    ██████╦╝██║     ██║  ██║██║  ╚═╝█████═╝ █████╗  ██████╔╝
echo.                                            %p%██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝    ██╔══██╗██║     ██║  ██║██║  ██╗██╔═██╗ ██╔══╝  ██╔══██╗
echo.                                            %p%╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗  ██████╦╝███████╗╚█████╔╝╚█████╔╝██║ ╚██╗███████╗██║  ██║
echo.                                            %p% ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝  ╚═════╝ ╚══════╝ ╚════╝  ╚════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Note: Disabling Windows Updates will break Microsoft store, if you want to use it again simply press "Enable" in windows update blocker ', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
start C:\exm\Windows_Update_Blocker.exe
echo. 
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto debloat


:d3
:bluetooth
cls
echo.
echo.                                  %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                       %p%██████╗ ██╗     ██╗   ██╗███████╗████████╗ █████╗  █████╗ ████████╗██╗  ██╗
echo.                                                       %p%██╔══██╗██║     ██║   ██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝██║  ██║
echo.                                                       %p%██████╦╝██║     ██║   ██║█████╗     ██║   ██║  ██║██║  ██║   ██║   ███████║
echo.                                                       %p%██╔══██╗██║     ██║   ██║██╔══╝     ██║   ██║  ██║██║  ██║   ██║   ██╔══██║
echo.                                                       %p%██████╦╝███████╗╚██████╔╝███████╗   ██║   ╚█████╔╝╚█████╔╝   ██║   ██║  ██║
echo.                                                       %p%╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝   ╚═╝    ╚════╝  ╚════╝    ╚═╝   ╚═╝  ╚═╝
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                        %p%[%w%1%p%]%w% Disable Bluetooth                  %p%[%w%2%p%]%w% Enable Bluetooth %g%(default)
echo.
echo.
echo.                                                        %p%%p%%p%%p%                           %p%[%w%M%p%]%w% Back to Menu  
echo. 
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                           Disable bluetooth if you dont use it, but if you use it keep it enabled                                               
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 pause goto BluetoothOFF
if /i %input% == 2 pause goto BluetoothON
if /i %input% == M pause goto debloat
) ELSE (
echo %w%- Invalid Input %b% & pause goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto bluetooth

:BluetoothON
echo %w% - Enabling Bluetooth %b%
reg add "HKLM\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto debloat

:BluetoothOFF
echo %w% - Disabling Bluetooth %b%
reg add "HKLM\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto debloat




:d5
cls
echo.
echo.                                  %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                       %p%███╗   ███╗██╗████████╗██╗ ██████╗  █████╗ ████████╗██╗ █████╗ ███╗  ██╗ ██████╗
echo.                                                       %p%████╗ ████║██║╚══██╔══╝██║██╔════╝ ██╔══██╗╚══██╔══╝██║██╔══██╗████╗ ██║██╔════╝
echo.                                                       %p%██╔████╔██║██║   ██║   ██║██║  ██╗ ███████║   ██║   ██║██║  ██║██╔██╗██║╚█████╗ 
echo.                                                       %p%██║╚██╔╝██║██║   ██║   ██║██║  ╚██╗██╔══██║   ██║   ██║██║  ██║██║╚████║ ╚═══██╗
echo.                                                       %p%██║ ╚═╝ ██║██║   ██║   ██║╚██████╔╝██║  ██║   ██║   ██║╚█████╔╝██║ ╚███║██████╔╝
echo.                                                       %p%╚═╝     ╚═╝╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚════╝ ╚═╝  ╚══╝╚═════╝ 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                        %p%[%w%1%p%]%w% Disable Mitigations                   %p%[%w%2%p%]%w% Enable Mitigations %g%(revert)
echo.
echo. 
echo.                                                       %p%%p%%p%%p%                               %p%[%w%M%p%]%w% Back To menu 
echo. 
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                  Mitigations are protections against memory-based attacks, but they come at a performance cost
echo.                                                    This disables a bunch of basic ones which cause performance loss but arent that important
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 pause goto mitioff
if /i %input% == 2 pause goto mition
if /i %input% == M pause goto Debloat

) ELSE (
echo %w%- Invalid Input %b% & pause goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto miti

:mitioff
::disable basic mitigations
echo %w% - Disabling VirtualizationBasedSecurity%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f 
echo %w% - Disabling HVCIMATRequired%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f 
echo %w% - Disabling ExceptionChainValidation%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Disabling Sehop%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f 
echo %w% - Disabling CFG%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f 
echo %w% - Disabling Protection Mode%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f 
echo %w% - Disabling Spectre And Meltdown%b%

if "%ProcessorManufacturer%" EQU "AuthenticAMD" (
    reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "2" /f 
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "2" /f
) else (
    reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f 
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
)

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f 
echo %w% - Disabling Address Space Layout Randomization%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f 
 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto debloat


:mition
echo %w% - Enabling Isolation Memory Integrity%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling HVCIMAT%b%	
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "1" /f 
echo %w% - Enabling ExceptionChainValidation%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Sehop%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling CFG%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Protection Mode%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Spectre And Meltdown%b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /f
echo %w% - Enabling Address Space Layout Randomization%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f  
 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto debloat



:d8
echo %w% - Disable Hyper-V %b%
sc config HvHost start=disabled 
sc config vmickvpexchange start=disabled 
sc config vmicguestinterface start=disabled 
sc config vmicshutdown start=disabled 
sc config vmicheartbeat start=disabled 
sc config vmicvmsession start=disabled 
sc config vmicrdv start=disabled 
sc config vmictimesync start=disabled 
bcdedit /set hypervisorlaunchtype off
	
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto debloat

:d2
echo %w% - Disabling Autologgers%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnabled" /t REG_DWORD /d "0" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "0" /f 


echo %w% - Disabling Telemetry Through Task Scheduler %b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /Disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /Disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Disable 
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" 
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /Disable 
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy" 
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /Disable 
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" 
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /Disable 
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" 
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable 
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" 
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable 
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" 
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /Disable 
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks" 
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /Disable 
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" 
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable 
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" 
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /Disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /Disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /Disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" 
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable 
schtasks /end /tn "\Microsoftd\Office\OfficeTelemetryAgentFallBack" 
schtasks /change /TN "\Microsoftd\Office\OfficeTelemetryAgentFallBack" /Disable 
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" 
schtasks /change /TN "\Microsoft\Office\Office 15 Subscription Heartbeat" /Disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable 
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" 
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable 
schtasks /end /tn "\Microsoft\Windows\Device Information\Device" 
schtasks /change /TN "\Microsoft\Windows\Device Information\Device" /Disable 

echo %w% - Disabling Telemetry Through Regsitry %b%
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowCommercialDataPipeline" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MicrosoftEdgeDataOptIn" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoExplicitFeedback" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "DoSvc" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Reliability" /v "CEIPEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Reliability" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "DisableOptinExperience" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\IE" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v value /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f

cls
echo %w% - Disabling Office Telemetry  %b%
reg add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "SendTelemetry" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common" /v "qmEnable" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Firstrun" /v "Disablemovie" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableFileObfuscation" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "1" /f

echo %w% - Disabling Customer Experience Improvement Program%b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" > nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" > nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" > nul 2>&1


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto debloat


:d7
cls
echo.
echo.                               %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                       %p%███╗   ███╗ ██████╗   ██████╗████████╗ █████╗ ██████╗ ███████╗
echo.                                                       %p%████╗ ████║██╔════╝  ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝
echo.                                                       %p%██╔████╔██║╚█████╗   ╚█████╗    ██║   ██║  ██║██████╔╝█████╗   
echo.                                                       %p%██║╚██╔╝██║ ╚═══██╗   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝ 
echo.                                                       %p%██║ ╚═╝ ██║██████╔╝  ██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗
echo.                                                       %p%╚═╝     ╚═╝╚═════╝   ╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝
echo.                                              %b%"═══════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                  %p%[%w%1%p%]%w% Disable Microsoft Store            %p%[%w%2%p%]%w% Enable Microsoft Store %g%(Revert)
echo.
echo.
echo.                                                  %p%%p%%p%%p%                        %p%[%w%M%p%]%w% Back To menu 
echo. 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                      Disables the microsoft store feature 
echo.                                                 You need to have updates enabled for it to work, the revert will enable them
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 pause goto microsoftstoreoff2
if /i %input% == 2 pause goto microsoftstoreon2
if /i %input% == M pause goto debloat

) ELSE (
echo %w%- Invalid Input %b% & pause goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto d7

:microsoftstoreon2
echo %w% - Enabling Microsoft store%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 1 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 


cls
echo.
echo.
echo.
echo.
echo.                                            %p%██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗  ██████╗ ██╗      █████╗  █████╗ ██╗  ██╗███████╗██████╗ 
echo.                                            %p%██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝  ██╔══██╗██║     ██╔══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗
echo.                                            %p%██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗    ██████╦╝██║     ██║  ██║██║  ╚═╝█████═╝ █████╗  ██████╔╝
echo.                                            %p%██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝    ██╔══██╗██║     ██║  ██║██║  ██╗██╔═██╗ ██╔══╝  ██╔══██╗
echo.                                            %p%╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗  ██████╦╝███████╗╚█████╔╝╚█████╔╝██║ ╚██╗███████╗██║  ██║
echo.                                            %p% ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝  ╚═════╝ ╚══════╝ ╚════╝  ╚════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Note: Disabling Windows Updates will break Microsoft store, if you want to use it again simply press "Enable" in windows update blocker ', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
start C:\exm\Windows_Update_Blocker.exe
echo. 
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto debloat


:microsoftstoreoff2
echo %w% - Disabling Microsoft store%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 0 /f 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto debloat




:revertdebloat
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.  


echo %w% - Enabling Gamdvr%b%
reg add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "1" /f

echo %w% - Enabling Xbox Services%b%
sc config xbgm start= demand >nul 2>&1
sc config XblAuthManager start= auto
sc config XblGameSave start= manual
sc config XboxGipSvc start= demand
sc config XboxNetApiSvc start= demand

echo %w% - Enabling Isolation Memory Integrity%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling HVCIMAT%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "1" /f 
echo %w% - Enabling ExceptionChainValidation%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Sehop%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling CFG%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Protection Mode%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Spectre And Meltdown%b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /f
echo %w% - Enabling Address Space Layout Randomization%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f  

echo %w% - Enabling Hyper-V%b%
sc config HvHost start=auto
sc config vmickvpexchange start=auto 
sc config vmicguestinterface start=auto
sc config vmicshutdown start=auto
sc config vmicheartbeat start=auto 
sc config vmicvmsession start=auto
sc config vmicrdv start=auto
sc config vmictimesync start=auto
sc config vmicvss start=auto
bcdedit /set hypervisorlaunchtype auto

echo %w% - Enabling Telemetry%b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater"
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask"
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /enable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /enable
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy"
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /enable
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT"
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent"
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /enable
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /enable
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /enable
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics"
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /enable
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks"
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /enable
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /enable
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific"
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack" /enable
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat"
schtasks /change /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" /enable
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /enable
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime"
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /enable
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
schtasks /change /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /enable
schtasks /end /tn "\Microsoft\Windows\Device Information\Device"
schtasks /change /tn "\Microsoft\Windows\Device Information\Device" /enable

echo %w% - Enabling Autologgers%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnabled" /t REG_DWORD /d "1" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "1" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Printing and maps Services  %b%
sc config MapsBroker start= enabled
sc config PrintNotify start= enabled
sc config Spooler start= enabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /enable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /enable 

echo %w% - Enabling Office Telemetry%b%
reg add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "SendTelemetry" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common" /v "qmEnable" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Firstrun" /v "Disablemovie" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableFileObfuscation" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "0" /f

echo %w% - Enabling Biometrics%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "2" /f

echo %w% - Enabling Microsoft store%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 1 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 

echo %w% - Redownload default windows apps %g%(Errors may show, thats because the app that the command is trying to install is already installed, so dont worry)%b%
chcp 437 > nul
Powershell -Command "Get-AppxPackage -allusers | foreach {Add-AppxPackage -register “$($_.InstallLocation)\appxmanifest.xml” -DisabledevelopmentMode}"

powershell:Start-Process -FilePath winget -ArgumentList "install --force  --accept-source-agreements --accept-package-agreements --silent Microsoft.Edge " -NoNewWindow
chcp 65001 > nul


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu



:d4
echo %w% - Disabling Printing and maps Services  %b%
sc config MapsBroker start= disabled
sc config PrintNotify start= disabled
sc config Spooler start= disabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto debloat




:d1
echo %w% - Disabling GameDVR%b%
reg add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f

echo %w% - Disabling Xbox%b%
sc config xbgm start= Disabled >nul 2>&1
sc config XblAuthManager start= Disabled >nul 2>&1
sc config XblGameSave start= Disabled >nul 2>&1
sc config XboxGipSvc start= Disabled >nul 2>&1
sc config XboxNetApiSvc start= Disabled >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto debloat



:fixes
cls
echo.
echo.                               %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                       %p% ██████╗ ██╗   ██╗██╗ █████╗ ██╗  ██╗  ███████╗██╗██╗  ██╗
echo.                                                       %p%██╔═══██╗██║   ██║██║██╔══██╗██║ ██╔╝  ██╔════╝██║╚██╗██╔╝
echo.                                                       %p%██║██╗██║██║   ██║██║██║  ╚═╝█████═╝   █████╗  ██║ ╚███╔╝ 
echo.                                                       %p%╚██████╔╝██║   ██║██║██║  ██╗██╔═██╗   ██╔══╝  ██║ ██╔██╗ 
echo.                                                       %p% ╚═██╔═╝ ╚██████╔╝██║╚█████╔╝██║ ╚██╗  ██║     ██║██╔╝╚██╗
echo.                                                       %p%   ╚═╝    ╚═════╝ ╚═╝ ╚════╝ ╚═╝  ╚═╝  ╚═╝     ╚═╝╚═╝  ╚═╝
echo.                                        %b%"═════════════════════════════════════════════════════════════════════════════════════"%w%              
echo.                                                                                                                                                                  
echo.                                                                %p%[%w%1%p%]%w% Bring back default power plans                                 
echo.                                                                                                                          
echo.                                                                %p%[%w%2%p%]%w% Reinstall default windows apps                                 
echo.                                                                                                                      
echo.                                                                %p%[%w%3%p%]%w% Enable XBOX Services                                           
echo.                                                                                                                      
echo.                                                                %p%[%w%4%p%]%w% Enable GameDVR                                                 
echo.                                                                                                                         
echo.                                                                %p%[%w%5%p%]%w% Enable Notifications                                           
echo.                                                                                                                       
echo.                                                                %p%[%w%6%p%]%w% Enable Bluetooth      
echo.
echo.                                                                %p%[%w%7%p%]%w% Enable Printing and Maps Services
echo.  
echo.                                                                %p%[%w%8%p%]%w% Reinstall Edge
echo.     
echo.                                                                %p%[%w%9%p%]%w% Enable Windows Updates
echo.
echo.                                                                %p%[%w%10%p%]%w% Enable Windows Smart Screen
echo.
echo.                                                                %p%[%w%11%p%]%w% Enable Diagnostics
echo.
echo.                                                                %p%[%w%12%p%]%w% Enable Biometrics
echo.
echo.                                                                %p%[%w%13%p%]%w% Fix Fivem
echo.
echo.
echo.                                                                   %p%[%w%M%p%]%w% Back to menu                                         
echo.                                                                              
echo.                                        %b%"═════════════════════════════════════════════════════════════════════════════════════"
echo.                                           %W% Allows you to quickly revert certain settings, without having to use a restore point
echo.                                        %b%"═════════════════════════════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 pause goto r1
if /i %input% == 2 pause goto r2
if /i %input% == 3 pause goto r3
if /i %input% == 4 pause goto r4
if /i %input% == 5 pause goto r5
if /i %input% == 6 pause goto r6
if /i %input% == 7 pause goto r7
if /i %input% == 8 pause goto r8
if /i %input% == 9 pause goto w9
if /i %input% == 10 pause goto r10
if /i %input% == 11 pause goto r11
if /i %input% == 12 pause goto r12
if /i %input% == 13 pause goto r13
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto :e

:r13
echo %w% - Fix fivem%b%
netsh int tcp set security mpp=enabled >nul 2>&1
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto :e


:r12
echo %w% - Enabling Biometrics%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto :e

:r5
echo %w% - Enabling Notifications%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto :e

:r11
echo %w% - Enabling Diagnostics %b%
sc config DPS start= auto
sc config DiagTrack start= demand 
sc config dmwappushservice start= demand 
sc config diagnosticshub.standardcollector.service start= demand 
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /Enable
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Enable
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Enable
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Enable
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Diagnostics\Performance" /v "DisablediagnosticTracing" /t REG_DWORD /d "0" /f >nul 2>&1 
reg add "HKLM\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto :e

:r10
echo %w% - Enabling Windows Smart Screen  %b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "On" /f 
reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto :e


:r9
chcp 437 > nul
echo %w%- Revert Edge through official installer %B%
start https://discord.com/channels/1177410668606009444/1178430446590238860/1288889764304654440

chcp 65001 > nul

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto :e

:r7
echo %w% - Enabling Printing and maps Services  %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "2" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto :e



:r6
echo %w% - Enabling Bluetooth%b%
reg add "HKLM\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto :e



:r4
echo %w% - Enabling Gamedvr Services%b%
reg add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu

:r3
echo %w% - Enabling Xbox Services%b%
sc config xbgm start= demand
sc config XblAuthManager start= demand
sc config XblGameSave start= demand
sc config XboxGipSvc start= demand
sc config XboxNetApiSvc start= demand
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu

:r2
echo %w% - Redownload default windows apps%b%
chcp 437 > nul
Powershell -Command "Get-AppxPackage -allusers | foreach {Add-AppxPackage -register “$($_.InstallLocation)\appxmanifest.xml” -DisabledevelopmentMode}"
chcp 65001 > nul

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu

:r1
echo %w% - Resetting power plans%b%
powercfg –restoredefaultschemes
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu









:5war
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Do NOT do these if your pc has bad overheating issues', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
timeout /t 1 /nobreak > nul
chcp 65001 >nul 2>&1

:5
:cpu
cls
echo.
echo.                               %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                                  %p%  █████╗ ██████╗ ██╗   ██╗          
echo.                                                                  %p% ██╔══██╗██╔══██╗██║   ██║       
echo.                                                                  %p% ██║  ╚═╝██████╔╝██║   ██║         
echo.                                                                  %p% ██║  ██╗██╔═══╝ ██║   ██║        
echo.                                                                  %p% ╚█████╔╝██║     ╚██████╔╝      
echo.                                                                  %p%  ╚════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                                                                                                                                                       
echo.                                                      %p%[%w%1%p%]%w% Apply Optimizations for AMD CPUs          
echo.
echo.                                                      %p%[%w%2%p%]%w% Apply Optimizations for Intel CPUs                                             
echo.                                                                                           
echo.                                                                                             
echo.                                                                %p%[%w%T%p%]%w% Open Task Manager                           
echo.                                                                                           
echo.                                                                %p%[%w%M%p%]%w% Back to menu     
echo.
echo.                                                                %p%[%w%R%p%]%w% Revert                       
echo.                                                                             
echo.                                        %b%"════════════════════════════════════════════════════════════════════" %w%
echo.                                                          %w% Select Which type of cpu you have:   
echo.          
echo.                                           %w% Disable power saving features, Disablings core parking and more!
echo.                                        %b%"════════════════════════════════════════════════════════════════════"
echo.

set /p input=:
if /i %input% == 1 pause goto cpu1
if /i %input% == 2 pause goto cpu2
if /i %input% == R pause goto revertcpu
if /i %input% == T start taskmgr & pause goto 8
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu

:RedirectMenu
cls
pause goto 	


:revertcpu
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.  

echo %w%- Reverting Intel-Specific CPU Tweaks %b%
bcdedit /deletevalue allowedinmemorysettings
bcdedit /deletevalue isolatedcontext

echo %w%- Reverting Distribute Timers %b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /f

echo %w%- Reverting TSX %b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /f

echo %w%- Reverting Even Processor %b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /f

echo %w%- Reverting CPU Cooling Tweaks %b%
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Logical Processors %b%
bcdedit /deletevalue {current} numproc

echo %w%- Reverting C-States %b%
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Higher P-States on Lower C-States %b%
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Core Parking %b%
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 10
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Throttle States %b%
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "5" /f

echo %w%- Fair Share CPU Scheduling %b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System" /v EnableCpuQuota /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu


:cpu1
cls
echo.  
echo.  
echo.
echo.                                                                  %p% █████╗ ███╗   ███╗██████╗    █████╗ ██████╗ ██╗   ██╗
echo.                                                                  %p%██╔══██╗████╗ ████║██╔══██╗  ██╔══██╗██╔══██╗██║   ██║
echo.                                                                  %p%███████║██╔████╔██║██║  ██║  ██║  ╚═╝██████╔╝██║   ██║
echo.                                                                  %p%██╔══██║██║╚██╔╝██║██║  ██║  ██║  ██╗██╔═══╝ ██║   ██║
echo.                                                                  %p%██║  ██║██║ ╚═╝ ██║██████╔╝  ╚█████╔╝██║     ╚██████╔╝
echo.                                                                  %p%╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝    ╚════╝ ╚═╝      ╚═════╝ 
echo.
timeout 1 /nobreak > NUL
echo %w%- Disabling Core Parking  %b%
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg /setactive SCHEME_CURRENT

echo %w%- Disabling TSX%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "1" /f

echo %w%- Disabling Event Processor%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f

echo %w%- CPU Cooling Tweaks %b%
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setactive SCHEME_CURRENT

echo %w%- Tweak CPU Capabilities %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v Capabilities /t REG_DWORD /d 0x7E066 /f

echo %w%- Enabling All Logical Processors %b%
set THREADS=%NUMBER_OF_PROCESSORS% & bcdedit /set {current} numproc %NUMBER_OF_PROCESSORS% 

echo %w% - Disabling C-States%b%
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
powercfg /setactive SCHEME_CURRENT

echo %w%- Use Higher P-States on Lower C-States And Viseversa %b%
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 1
powercfg /setactive SCHEME_CURRENT

echo %w% - Disabling Throttle States%b%
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f

echo %w%- Disable Fair Share CPU Scheduling %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System" /v EnableCpuQuota /t REG_DWORD /d "0" /f

echo %w%- Tweak CPU Capabilities %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v Capabilities /t REG_DWORD /d 0x7E066 /f

echo %w% Optimize Processor Performance Time Check Interval %b%
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 5000
Powercfg -setactive scheme_current
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu

:cpu2
CLS
echo.
echo.
echo.
echo.                                                                  %p%██╗███╗  ██╗████████╗███████╗██╗        █████╗ ██████╗ ██╗   ██╗
echo.                                                                  %p%██║████╗ ██║╚══██╔══╝██╔════╝██║       ██╔══██╗██╔══██╗██║   ██║
echo.                                                                  %p%██║██╔██╗██║   ██║   █████╗  ██║       ██║  ╚═╝██████╔╝██║   ██║
echo.                                                                  %p%██║██║╚████║   ██║   ██╔══╝  ██║       ██║  ██╗██╔═══╝ ██║   ██║
echo.                                                                  %p%██║██║ ╚███║   ██║   ███████╗███████╗  ╚█████╔╝██║     ╚██████╔╝
echo.                                                                  %p%╚═╝╚═╝  ╚══╝   ╚═╝   ╚══════╝╚══════╝   ╚════╝ ╚═╝      ╚═════╝ 
echo.
timeout 1 /nobreak > NUL

echo %w%- Disabling Core Parking  %b%
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg /setactive SCHEME_CURRENT

echo %w%- Intel Specific Cpu tweaks %b%
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set isolatedcontext No

echo %w%- Enable TSX%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "0" /f

echo %w%- Disabling Event Processor%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f

echo %w%- CPU Cooling Tweaks %b%
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setactive SCHEME_CURRENT

echo %w%- Enabling All Logical Processors %b%
set THREADS=%NUMBER_OF_PROCESSORS% & bcdedit /set {current} numproc %NUMBER_OF_PROCESSORS% 

echo %w% - Disabling C-States%b%
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
powercfg /setactive SCHEME_CURRENT
timeout /t 1 /nobreak > NUL

echo %w%- Use Higher P-States on Lower C-States And Viseversa %b%
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 1
powercfg /setactive SCHEME_CURRENT

echo %w% - Disabling Throttle States%b%
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f

echo %w%- Disable Fair Share CPU Scheduling %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System" /v EnableCpuQuota /t REG_DWORD /d "0" /f

echo %w%- Tweak CPU Capabilities %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v Capabilities /t REG_DWORD /d 0x7E066 /f

echo %w% Optimize Processor Performance Time Check Interval %b%
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 5000
Powercfg -setactive scheme_current
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu


:revertgpu
cls
echo.
echo.                    %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                      %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                      %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                      %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                      %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                      %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                      %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═══════════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                                     %p%[%w%1%p%]%w% Revert NVIDIA GPU Optimizations                             
echo.                                                                                            
echo.                                                     %p%[%w%2%p%]%w% Revert AMD GPU Optimizations                                
echo.                                                                                          
echo.                                                     %p%[%w%3%p%]%w% Revert Intel GPU Optimizations                           
echo.                                                                     
echo.                                                                                                                                                                                                          
echo.                                                             %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.                                                     %w% Select which type of Gpu you have:  
echo. 
echo.                                               %W%  Reverts gpu tweaks made by the exm free utility
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 pause goto rg1
if /i %input% == 2 pause goto rg2
if /i %input% == 3 pause goto rg3
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto revertgpu

:rg3
cls
echo.
echo.
echo.                                                       %p%   ██╗███╗  ██╗████████╗███████╗██╗        ██████╗ ██████╗ ██╗   ██╗
echo.                                                       %p%   ██║████╗ ██║╚══██╔══╝██╔════╝██║       ██╔════╝ ██╔══██╗██║   ██║
echo.                                                       %p%   ██║██╔██╗██║   ██║   █████╗  ██║       ██║  ██╗ ██████╔╝██║   ██║
echo.                                                       %p%   ██║██║╚████║   ██║   ██╔══╝  ██║       ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                       %p%   ██║██║ ╚███║   ██║   ███████╗███████╗  ╚██████╔╝██║     ╚██████╔╝  
echo.                                                       %p%   ╚═╝╚═╝  ╚══╝   ╚═╝   ╚══════╝╚══════╝   ╚═════╝ ╚═╝      ╚═════╝ 
echo.
echo.



echo %w% - Reverting Intel Gpu Tweaks%b%
for /f %%t in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "Intel" ^| findstr "HKEY"') do (

	reg add "%%t" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "0" /f
    reg add "%%t" /v "IncreaseFixedSegment" /t REG_DWORD /d "0" /f
    reg add "%%t" /v "AdaptiveVsyncEnabled" /t REG_DWORD /d "1" /f
    reg add "%%t" /v "DisablePFonDP" /t REG_DWORD /d "0" /f
    reg add "%%t" /v "EnableCompensationForDVI" /t REG_DWORD /d "0" /f
    reg add "%%t" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "1" /f
)
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto :menu

:rg2
:g2
cls
echo.
echo.
echo.
echo.                                                              %p% █████╗ ███╗   ███╗██████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%██╔══██╗████╗ ████║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%███████║██╔████╔██║██║  ██║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██╔══██║██║╚██╔╝██║██║  ██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║  ██║██║ ╚═╝ ██║██████╔╝  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝    ╚═════╝ ╚═╝      ╚═════╝ 
timeout 1 /nobreak > NUL


echo %w% - Enabling Display Refresh Rate Override%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "1" /f 

echo %w% - Enabling SnapShot%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Anti Aliasing%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "1" /f 

echo %w% - Enabling Subscriptions%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Anisotropic Filtering%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "1" /f 

echo %w% - Enabling Radeon Overlay%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "true" /f  


echo %w% - Enabling Skins%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "true" /f  

echo %w% - Enabling Automatic Color Depth Reduction%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Frame Rate Target%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling DMA%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledMACopy" /t REG_DWORD /d "1" /f 

echo %w% - Enabling BlockWrite%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "1" /f 
 
echo %w% - Enabling Preemption%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f

echo %w% - Enabling AMD Logging%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Reverting Latency Tolerance%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "0" /f

echo %w%- Enabling Hardware Acceleration %b% 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto :menu

:rg1
cls
echo.
echo.
echo.
echo.                                                              %p%███╗  ██╗██╗   ██╗██╗██████╗ ██╗ █████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%████╗ ██║██║   ██║██║██╔══██╗██║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%██╔██╗██║╚██╗ ██╔╝██║██║  ██║██║███████║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██║╚████║ ╚████╔╝ ██║██║  ██║██║██╔══██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║ ╚███║  ╚██╔╝  ██║██████╔╝██║██║  ██║  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚══╝   ╚═╝   ╚═╝╚═════╝ ╚═╝╚═╝  ╚═╝   ╚═════╝ ╚═╝      ╚═════╝ 

echo %w% - Reverting Contigous Memory Allocation %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "0" /f

echo %w%- Enabling HDCP%b%
chcp 437 >nul 2>&1
for /f "delims=" %%m in ('powershell -NoProfile -Command "Get-WmiObject Win32_VideoController | Where-Object { $_.PNPDeviceID -like 'PCI\\VEN_*' } | ForEach-Object { $_.PNPDeviceID }"') do (
    for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%m" /v "Driver" 2^>nul') do (
        for /f %%g in ('echo %%a ^| findstr "{"') do (
            reg add "HKLM\SYSTEM\ControlSet001\Control\Class\%%g" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f
        )
    )
)

chcp 65001 >nul 2>&1
 

echo %w% - Enabling Preemption%b%

reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t Reg_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t Reg_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "1" /f


echo %w% - Reverting NVIDIA Latency Tolerance%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "0" /f 
echo %w% - Reverting Latency Tolerance%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "0" /f

pause goto echo %w%- Enabling Hardware Acceleration %b% 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto :menu



:4
:gpu
cls
echo.
echo.                         %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                      %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                      %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                      %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                      %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                      %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                      %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═══════════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                                     %p%[%w%1%p%]%w% Apply NVIDIA GPU Optimizations                             
echo.                                                                                            
echo.                                                     %p%[%w%2%p%]%w% Apply AMD GPU Optimizations                                
echo.                                                                                          
echo.                                                     %p%[%w%3%p%]%w% Apply Intel GPU Optimizations                           
echo.                                                                     
echo.                      
echo.                                                             %p%[%w%T%p%]%w% Open Task Manager   
echo.
echo.                                                             %p%[%w%R%p%]%w% Revert                          
echo.                                                                                                                                                                                     
echo.                                                             %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.                                                     %w% Select which type of Gpu you have:  
echo. 
echo.                                               %W%  Optimizes your GPU by tweaking 3d settings
echo.                                               %W% Disabling power saving features and much more
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 pause goto g1
if /i %input% == 2 pause goto g2
if /i %input% == 3 pause goto g3
if /i %input% == r pause goto revertgpu
if /i %input% == T start taskmgr & pause goto 7
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto 4


:g3
cls
echo.
echo.
echo.                                                       %p%   ██╗███╗  ██╗████████╗███████╗██╗        ██████╗ ██████╗ ██╗   ██╗
echo.                                                       %p%   ██║████╗ ██║╚══██╔══╝██╔════╝██║       ██╔════╝ ██╔══██╗██║   ██║
echo.                                                       %p%   ██║██╔██╗██║   ██║   █████╗  ██║       ██║  ██╗ ██████╔╝██║   ██║
echo.                                                       %p%   ██║██║╚████║   ██║   ██╔══╝  ██║       ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                       %p%   ██║██║ ╚███║   ██║   ███████╗███████╗  ╚██████╔╝██║     ╚██████╔╝  
echo.                                                       %p%   ╚═╝╚═╝  ╚══╝   ╚═╝   ╚══════╝╚══════╝   ╚═════╝ ╚═╝      ╚═════╝ 
echo.
echo.



echo %w% - Intel Gpu Tweaks%b%
for /f %%t in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "Intel" ^| findstr "HKEY"') do (

	reg add "%%t" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "1" /f
    reg add "%%t" /v "IncreaseFixedSegment" /t REG_DWORD /d "1" /f
    reg add "%%t" /v "AdaptiveVsyncEnabled" /t REG_DWORD /d "0" /f
    reg add "%%t" /v "DisablePFonDP" /t REG_DWORD /d "1" /f
    reg add "%%t" /v "EnableCompensationForDVI" /t REG_DWORD /d "1" /f
    reg add "%%t" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "0" /f
    reg add "%%t" /v "ACPowerPolicyVersion" /t REG_DWORD /d "16898" /f
    reg add "%%t" /v "DCPowerPolicyVersion" /t REG_DWORD /d "16642" /f
)


reg add "HKLM\Software\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "512" /f

pause goto hardwareacceleration




:1 
cls
echo.
echo.                               %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                     %p%    ██████╗ ███████╗███╗  ██╗███████╗██████╗  █████╗ ██╗          
echo.                                                     %p%   ██╔════╝ ██╔════╝████╗ ██║██╔════╝██╔══██╗██╔══██╗██║          
echo.                                                     %p%   ██║  ██╗ █████╗  ██╔██╗██║█████╗  ██████╔╝███████║██║         
echo.                                                     %p%   ██║  ╚██╗██╔══╝  ██║╚████║██╔══╝  ██╔══██╗██╔══██║██║           
echo.                                                     %p%   ╚██████╔╝███████╗██║ ╚███║███████╗██║  ██║██║  ██║███████╗     
echo.                                                     %p%    ╚═════╝ ╚══════╝╚═╝  ╚══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝    
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                
echo.                                                    %p%[%w%1%p%]%w% Apply General Regsitry and windows Optimizations 
echo. 
echo.                                                                                         
echo.                                                                      %p%[%w%M%p%]%w% Back to menu   
echo.
echo.                                                                      %p%[%w%R%p%]%w% Revert                        
echo.
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                          %W%Applies general optimizations in registry, windows settings, bcd-edit and more!
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo. 
echo. 

set /p input=:
if /i %input% == 1 pause goto general
if /i %input% == R pause goto revertgeneral
if /i %input% == M CLS & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect 

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenue
:RedirectMenu
cls
pause goto :1

:general
CLS
echo.
echo.
echo.
echo.                                           %p% ██████╗ ███████╗███╗  ██╗███████╗██████╗  █████╗ ██╗         ██╗ ██╗       ██╗██╗███╗  ██╗██████╗  █████╗  ██╗       ██╗ ██████╗
echo.                                           %p%██╔════╝ ██╔════╝████╗ ██║██╔════╝██╔══██╗██╔══██╗██║        ██╔╝ ██║  ██╗  ██║██║████╗ ██║██╔══██╗██╔══██╗ ██║  ██╗  ██║██╔════╝
echo.                                           %p%██║  ██╗ █████╗  ██╔██╗██║█████╗  ██████╔╝███████║██║       ██╔╝  ╚██╗████╗██╔╝██║██╔██╗██║██║  ██║██║  ██║ ╚██╗████╗██╔╝╚█████╗ 
echo.                                           %p%██║  ╚██╗██╔══╝  ██║╚████║██╔══╝  ██╔══██╗██╔══██║██║      ██╔╝    ████╔═████║ ██║██║╚████║██║  ██║██║  ██║  ████╔═████║  ╚═══██╗
echo.                                           %p%╚██████╔╝███████╗██║ ╚███║███████╗██║  ██║██║  ██║███████╗██╔╝     ╚██╔╝ ╚██╔╝ ██║██║ ╚███║██████╔╝╚█████╔╝  ╚██╔╝ ╚██╔╝ ██████╔╝
echo.                                           %p% ╚═════╝ ╚══════╝╚═╝  ╚══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝       ╚═╝   ╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝  ╚════╝    ╚═╝   ╚═╝  ╚═════╝ 
echo. 
echo.
echo.


echo %w% - Disabling Dynamic Tick%b%
bcdedit /set Disabledynamictick yes >nul 2>&1
echo %w% - Disabling High Precision Event Timer %g%(HPET)%b%
bcdedit /deletevalue useplatformclock  >nul 2>&1
echo %w% - Disabling Synthetic Timers%b%
bcdedit /set useplatformtick yes  >nul 2>&1



echo %w% - MMCSS Priority For Low Latency%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f


echo %w% - Setting Win32Priority%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f 

echo %w% - Decreasing process kill time and menu show delay%b%
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f

echo %w% - Setting IO Time Stamp%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d "3" /f 

echo %w%- Enabling Memory Mapping %b%
bcdedit /set configaccesspolicy Default
bcdedit /set MSI Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No


echo %w% - Setting Latency Tolerance%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Biometrics%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f

echo %w% - Setting System Responsiveness%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "10" /f 

echo %w% - Optimizing Windows Search%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsAssignedAccess" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsWindowsHelloActive" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "3" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DoNotUseWebResults" /t REG_DWORD /d "1" /f

echo %w% - Track Only Important Failure Events %b%
Auditpol /set /subcategory:"Process Termination" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"RPC Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Filtering Platform Connection" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"DPAPI Activity" /failure:Disable /failure:Disable >nul 2>&1 
Auditpol /set /subcategory:"IPsec Driver" /success:	 /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Other System Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security State Change" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security System Extension" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"System Integrity" /failure:Disable /failure:Enable >nul 2>&1 
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f

echo %w% - Disabling Windows Insider Experiments%b%
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Activity feed%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f

echo %w% - Disabling Automatic Maintenance%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Notifications%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f

echo %w%- Disabling Shared Experiences %b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "0" /f

echo %w% - Disabling Setting Synchronization%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t Reg_DWORD /d "5" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t Reg_DWORD /d ""0"" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t Reg_DWORD /d "2" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t Reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t Reg_DWORD /d "2" /f

echo %w%- Stop Reinstalling Preinstalled apps %b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f

echo %w%- Disabling Background Apps %b%
reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f 
reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f 

echo %w%- Disabling Transparency %b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f

echo %w% - Tweaking Compatibility Settings%b%
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableEngine" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "1" /f

echo %w% - Disabling Tracking and some diagnostics%b%
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Diagnostics\Performance" /v "DisablediagnosticTracing" /t REG_DWORD /d "1" /f >nul 2>&1 
reg add "HKLM\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "0" /f
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Disable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable


echo %w% - Disable IoLatencyCap%b%
FOR /F "eol=E" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
	reg add "%%a" /F /V "IoLatencyCap" /T REG_DWORD /d 0 >nul 2>&1

	FOR /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\=!
		SET STR=!STR:\Parameters=!
		ECHO Setting IoLatencyCap to 0 in !STR!
	)
)

echo %w% - Disable DmaRemapping%b%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy" /v "value" /t REG_DWORD /d "2" /f
for /f %%i in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /s /f DmaRemappingCompatible ^| find /i "Services\" ') do (
	echo %%i...
	reg add "%%i" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
)


timeout /t 3 /nobreak > NUL

cls 
echo.
echo. 
echo. 
echo.                                                                          %p% █████╗ ███╗  ██╗██╗███╗   ███╗ █████╗ ████████╗██╗ █████╗ ███╗  ██╗ ██████╗
echo.                                                                          %p%██╔══██╗████╗ ██║██║████╗ ████║██╔══██╗╚══██╔══╝██║██╔══██╗████╗ ██║██╔════╝
echo.                                                                          %p%███████║██╔██╗██║██║██╔████╔██║███████║   ██║   ██║██║  ██║██╔██╗██║╚█████╗ 
echo.                                                                          %p%██╔══██║██║╚████║██║██║╚██╔╝██║██╔══██║   ██║   ██║██║  ██║██║╚████║ ╚═══██╗
echo.                                                                          %p%██║  ██║██║ ╚███║██║██║ ╚═╝ ██║██║  ██║   ██║   ██║╚█████╔╝██║ ╚███║██████╔╝
echo.                                                                          %p%╚═╝  ╚═╝╚═╝  ╚══╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚════╝ ╚═╝  ╚══╝╚═════╝ 
%windir%\system32\SystemPropertiesPerformance.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

:fse
cls
echo.
echo.                                            %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                              %p%███████╗██╗   ██╗██╗     ██╗      ██████╗ █████╗ ██████╗ ███████╗███████╗███╗  ██╗
echo.                                                              %p%██╔════╝██║   ██║██║     ██║     ██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝████╗ ██║
echo.                                                              %p%█████╗  ██║   ██║██║     ██║     ╚█████╗ ██║  ╚═╝██████╔╝█████╗  █████╗  ██╔██╗██║
echo.                                                              %p%██╔══╝  ██║   ██║██║     ██║      ╚═══██╗██║  ██╗██╔══██╗██╔══╝  ██╔══╝  ██║╚████║
echo.                                                              %p%██║     ╚██████╔╝███████╗███████╗██████╔╝╚█████╔╝██║  ██║███████╗███████╗██║ ╚███║
echo.                                                              %p%╚═╝      ╚═════╝ ╚══════╝╚══════╝╚═════╝  ╚════╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚══╝  
echo.                                                              %b%"════════════════════════════════════════════════════════════════════════════════"%w%
echo.      
echo.                                                                  %p%[%w%1%p%]%w% Set FSE For Windows 11                 %p%[%w%2%p%]%w% Set FSE For Windows 10  
echo.
echo.                                                                                                                   
echo.                                                                                           
echo.                                                                     %p%%p%%p%%p%                         %p%[%w%S%p%]%w% Skip 
echo.                                                                                          
echo.                                                              %b%"════════════════════════════════════════════════════════════════════════════════"
echo.                                                                    %W% Please select your Windows Version to apply the appropriate FSO setting
echo.                                                              %b%"════════════════════════════════════════════════════════════════════════════════"
echo. 
set /p input=:
if /i %input% == 1 pause goto windows11
if /i %input% == 2 pause goto windows10
if /i %input% == S cls & pause goto gamemode

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:nMisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu
:RedirectMenu
cls
pause goto :fse

:windows10
echo %w% - Setting FSE Behavior Mode %b%
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f

echo %w% - Delete Overlay %b%
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /f
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto :gamemode

:windows11

echo %w% - Setting FSE Behavior Mode %b%
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "0" /f
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f

echo %w% - Disabling VRR Optimizations %b%
reg add "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "DirectXUserGlobalSettings" /t REG_SZ /d "VRROptimizeEnable=0;SwapEffectUpgradeEnable=1;" /f

echo %w% - Delete Overlay %b%
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /f
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
echo.

pause > nul
cls
pause goto :gamemode

:gamemode
cls
echo.
echo.                                             %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                                         %p% ██████╗  █████╗ ███╗   ███╗███████╗  ███╗   ███╗ █████╗ ██████╗ ███████╗
echo.                                                                         %p%██╔════╝ ██╔══██╗████╗ ████║██╔════╝  ████╗ ████║██╔══██╗██╔══██╗██╔════╝
echo.                                                                         %p%██║  ██╗ ███████║██╔████╔██║█████╗    ██╔████╔██║██║  ██║██║  ██║█████╗  
echo.                                                                         %p%██║  ╚██╗██╔══██║██║╚██╔╝██║██╔══╝    ██║╚██╔╝██║██║  ██║██║  ██║██╔══╝  
echo.                                                                         %p%╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗  ██║ ╚═╝ ██║╚█████╔╝██████╔╝███████╗
echo.                                                                         %p% ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝  ╚═╝     ╚═╝ ╚════╝ ╚═════╝ ╚══════╝
echo.                                                               %b%"════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                                     %p%[%w%1%p%]%w% Enable Game Mode %g%(WIN 11)                   %p%[%w%2%p%]%w% Disable Game Mode %g%(WIN 10)
echo.
echo.                           
echo.                                                                     %p%%p%%p%%p%                        %p%[%w%S%p%]%w% Skip    
echo.                                                                             
echo.                                                               %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                           We recommend Enabling game mode on windows 11, but Disabling it on windows 10                                                
echo.                                                               %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 pause goto gmodeOn
if /i %input% == 2 pause goto gmodeOff
if /i %input% == S cls & pause goto Menu

) ELSE (
echo %w%- Invalid Input %b% & pause goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto gamemode

:gmodeON
echo %w% - Enabling Game Mode %b%
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto Menu

:gmodeOFF
echo %w% - Disabling Game Mode %b%
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto Menu



:Revertgeneral
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.
 
::bcd
echo %w% - Disabling Dynamic Tick%b%
bcdedit /set Disabledynamictick yes >nul 2>&1
echo %w% - Disabling High Precision Event Timer (HPET)%b%
bcdedit /deletevalue useplatformclock  >nul 2>&1
echo %w% - Disabling Synthetic Timers%b%
bcdedit /set useplatformtick yes  >nul 2>&1 


echo %w% - MMCSS Priority For Low Latency%b%
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /f

echo %w% - Setting Win32Priority%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "10" /f 

echo %w% - Decreasing process kill time and menu show delay%b%
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f

echo %w% - Setting IO Time Stamp%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d "1" /f 

echo %w% - Settings Csrss to default%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "2" /f 

echo %w% - Setting Latency Tolerance%b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /f 

echo %w% - Setting System Responsiveness%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "14" /f 

echo %w% - Enabling Biometrics%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "1" /f

echo %w% - Enabling Game mode%b%
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f

echo %w% - Optimizing Windows Search%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsAssignedAccess" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsWindowsHelloActive" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DoNotUseWebResults" /t REG_DWORD /d "0" /f

echo %w% - Track Only Important Failure Events %b%
Auditpol /set /subcategory:"Process Termination" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"RPC Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Filtering Platform Connection" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"DPAPI Activity" /failure:Disable /failure:Disable >nul 2>&1 
Auditpol /set /subcategory:"IPsec Driver" /success:	 /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Other System Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security State Change" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security System Extension" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"System Integrity" /failure:Disable /failure:Enable >nul 2>&1 
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "1" /f

echo %w% - Enabling Windows Insider Experiments%b%
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Activity feed%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft" /v "AllowNewsAndInterests" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "1" /f

echo %w% - Enabling Automatic Maintenance%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Notifications%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "0" /f

echo %w%- Enabling Shared Experiences %b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "1" /f

echo %w% - Disabling Setting Synchronization%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t Reg_DWORD /d "5" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t Reg_DWORD /d ""0"" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t Reg_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t Reg_DWORD /d "0" /f

echo %w%- Dont Stop Reinstalling Preinstalled apps %b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "1 /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "1" /f

echo %w%- Enabling Background Apps %b%
reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "0" /f 
reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "2" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "2" /f 

echo %w%- Enabling Transparency %b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "1" /f
  
echo %w% - Enabling GameMode%b%
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Reverting Combaility Settings%b%
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AllowTelemetry" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableEngine" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "0" /f

echo %w% - Enabling IoLatencyCap%b%
FOR /F "eol=E" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
	reg add "%%a" /F /V "IoLatencyCap" /T REG_DWORD /d 0 >nul 2>&1

	FOR /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\=!
		SET STR=!STR:\Parameters=!
		ECHO Setting IoLatencyCap to 0 in !STR!
	)
)

echo %w% - Enabling DmaRemapping%b%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy" /v "value" /t REG_DWORD /d "2" /f
for /f %%i in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /s /f DmaRemappingCompatible ^| find /i "Services\" ') do (
	echo %%i...
	reg add "%%i" /v "DmaRemappingCompatible" /t REG_DWORD /d "1" /f
)


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu




:2war
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Do NOT do these if your pc has overheating issues', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
timeout /t 1 /nobreak > nul
chcp 65001 >nul 2>&1
:2

:power
cls
echo.
echo.                            %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                          %p%██████╗  █████╗  ██╗       ██╗███████╗██████╗      
echo.                                                          %p%██╔══██╗██╔══██╗ ██║  ██╗  ██║██╔════╝██╔══██╗ 
echo.                                                          %p%██████╔╝██║  ██║ ╚██╗████╗██╔╝█████╗  ██████╔╝        
echo.                                                          %p%██╔═══╝ ██║  ██║  ████╔═████║ ██╔══╝  ██╔══██   
echo.                                                          %p%██║     ╚█████╔╝  ╚██╔╝ ╚██╔╝ ███████╗██║  ██║      
echo.                                                          %p%╚═╝      ╚════╝    ╚═╝   ╚═╝  ╚══════╝╚═╝  ╚═╝      
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════"%w%                                           
echo.                                                                     
echo.                                                                      %p%[%w%A%p%]%w% Apply All 
echo.                                             
echo.                                                            %p%[%w%1%p%]%w% Apply Exm Free Power Plan V7               
echo.                                                                                           
echo.                                                            %p%[%w%2%p%]%w% Disable Power saving features  
echo.   
echo.                                                            %p%[%w%3%p%]%w% Disable Power Telemetry     
echo.
echo.                                                            %p%[%w%4%p%]%w% Delete useless power plans 
echo.
echo.                                                            %p%[%w%5%p%]%w% Disable Hibernation, Fast startup and more    
echo.  
echo.                                                            %p%[%w%6%p%]%w% Disable Gpu power saving features
echo. 
echo.      
echo.                                                                       %p%[%w%M%p%]%w% Back to menu   
echo. 
echo.                                                                       %p%[%w%R%p%]%w% Revert 
echo.                                                                                      
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════"
echo.                                                     %w% Might increase cpu temperatures on poorly cooled pcs
echo.                                                  %W% Disablings a bunch of useless power saving features and more
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════"
echo.
echo.

set /p input=:
if /i %input% == A pause goto allpower
if /i %input% == 1 pause goto p1
if /i %input% == 2 pause goto p2
if /i %input% == 3 pause goto p3
if /i %input% == 4 pause goto p4
if /i %input% == 5 pause goto p5
if /i %input% == 6 pause goto p6
if /i %input% == R pause goto Revertpower
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto power


:allpower
cls
echo. 
echo. 
echo. 
echo.                                                                 %p%██████╗  █████╗  ██╗       ██╗███████╗██████╗      
echo.                                                                 %p%██╔══██╗██╔══██╗ ██║  ██╗  ██║██╔════╝██╔══██╗ 
echo.                                                                 %p%██████╔╝██║  ██║ ╚██╗████╗██╔╝█████╗  ██████╔╝        
echo.                                                                 %p%██╔═══╝ ██║  ██║  ████╔═████║ ██╔══╝  ██╔══██   
echo.                                                                 %p%██║     ╚█████╔╝  ╚██╔╝ ╚██╔╝ ███████╗██║  ██║      
echo.                                                                 %p%╚═╝      ╚════╝    ╚═╝   ╚═╝  ╚══════╝╚═╝  ╚═╝ 
echo. 
echo. 

echo %w% Import Exm Free Power Plan V7%b%
powercfg -import "C:\exm\Exm_Free_Power_Plan_V7.pow"
powercfg.cpl

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
:plans
cls
echo. 
echo.                                   %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo. 
echo.                                                     %p%██████╗ ███████╗██╗       ██████╗ ██╗      █████╗ ███╗  ██╗ ██████╗
echo.                                                     %p%██╔══██╗██╔════╝██║       ██╔══██╗██║     ██╔══██╗████╗ ██║██╔════╝
echo.                                                     %p%██║  ██║█████╗  ██║       ██████╔╝██║     ███████║██╔██╗██║╚█████╗ 
echo.                                                     %p%██║  ██║██╔══╝  ██║       ██╔═══╝ ██║     ██╔══██║██║╚████║ ╚═══██╗
echo.                                                     %p%██████╔╝███████╗███████╗  ██║     ███████╗██║  ██║██║ ╚███║██████╔╝
echo.                                                     %p%╚═════╝ ╚══════╝╚══════╝  ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝ 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                    %p%[%w%1%p%]%w% Delete Default Power Plans                       %p%[%w%2%p%]%w% Skip 
echo.
echo.                                                                                     
echo.                                                    %p%%p%%p%%p%                      %p%[%w%R%p%]%w% Revert Default Power Plans 
echo.
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                   Deletes default power plans %g%(Balanced, Power saver and High performance)                                              
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 pause goto deletepowerplans
if /i %input% == 2 pause goto powerall2
if /i %input% == R pause goto revertpowerplans
) ELSE (
echo %w%- Invalid Input %b% & pause goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto plans

:deletepowerplans
echo %w% - Deleting useless default power plans%b%
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto powerall2

:revertpowerplans
echo %w% - Resetting power plans%b%
powercfg –restoredefaultschemes
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto powerall2

pause > nul
:powerall2
echo %w% - Disabling StorPort Idle%b%
for /f "tokens=*" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do reg add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d "0" /f

echo %w%- Disabling Link State Power Managment %b%
echo %w%- Disabling HDD Parking %b%
echo %w%- Disabling HIPM %b%
echo %w%- Disabling DIPM %b%
for %%i in (EnableHIPM EnableDIPM EnableHDDParking) do for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%i" ^| findstr "HKEY"') do reg add "%%a" /v "%%i" /t REG_DWORD /d "0" /f

echo %w% - Disabling CoalescingTimerInterval%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Power Throttling%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Fast Startup %g%(fast startup is bad for your pc, even if it speeds up booting by a few seconds, thats why the utility disables it) %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Hibernation%b%
powercfg /h off
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Sleep Study %g%(you should only shutdown your pc, dont put it to sleep, its bad for your pc) %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Energy Logging + Power Telemetry%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto p6


:p4
cls
echo. 
echo.                                   %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com 
echo. 
echo.                                                        %p%██████╗ ███████╗██╗       ██████╗ ██╗      █████╗ ███╗  ██╗ ██████╗
echo.                                                        %p%██╔══██╗██╔════╝██║       ██╔══██╗██║     ██╔══██╗████╗ ██║██╔════╝
echo.                                                        %p%██║  ██║█████╗  ██║       ██████╔╝██║     ███████║██╔██╗██║╚█████╗ 
echo.                                                        %p%██║  ██║██╔══╝  ██║       ██╔═══╝ ██║     ██╔══██║██║╚████║ ╚═══██╗
echo.                                                        %p%██████╔╝███████╗███████╗  ██║     ███████╗██║  ██║██║ ╚███║██████╔╝
echo.                                                        %p%╚═════╝ ╚══════╝╚══════╝  ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝ 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                    %p%[%w%1%p%]%w% Delete Default Power Plans                           %p%[%w%2%p%]%w% Skip 
echo.
echo.                                                                                     
echo.                                                    %p%%p%%p%%p%                      %p%[%w%R%p%]%w% Restore Default Power Plans 
echo.
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                   Deletes default power plans %g%(Balanced, Power saver and High performance)                                              
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 pause goto deletepowerplans
if /i %input% == 2 pause goto menu
if /i %input% == R pause goto revertpowerplans
) ELSE (
echo %w%- Invalid Input %b% & pause goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
pause goto RedirectMenu

:RedirectMenu
pause goto p4

:deletepowerplans
echo %w% - Deleting useless power plans%b%
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto power

:revertpowerplans
echo %w% - Resetting power plans%b%
powercfg –restoredefaultschemes
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto power


:revertpower
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 
echo %w% - Enabling Energy Logging + Power Telemetry%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "1" /f 

echo %w%- Enabling Link State Power Managment %b%
echo %w%- Enabling HIPM %b%
echo %w%- Enabling DIPM %b%
echo %w%- Enabling HDD Parking %b%
for %%i in (EnableHIPM EnableDIPM EnableHDDParking) do for /f %a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%i" ^| findstr "HKEY"') do reg add "%a" /v "%%i" /t REG_DWORD /d "1" /f
	
echo %w% - Enabling GPU Energy Driver%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Enabling CoalescingTimerInterval%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "1" /f  

echo %w% - Enabling Power Throttling%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "0" /f 

echo %w% - Restoring power plans%b%
powercfg –restoredefaultschemes

echo %w% - Enabling Fast Startup %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Hibernation%b%
powercfg /h on
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Sleep Study 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "0" /f 

echo %w% - Enabling StorPort Idle%b%
for /f "tokens=*" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do reg add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d "1" /f

:rp6
cls
echo.
echo.                     %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com 
echo.
echo.                                                     %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                     %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                     %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                     %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                     %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                     %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                           %p%[%w%1%p%]%w% Enable NVIDIA GPU Power saving features                             
echo.                                                                                            
echo.                                           %p%[%w%2%p%]%w% Enable AMD GPU Power saving features                                
echo.                                                                                          
echo.                                           %p%[%w%3%p%]%w% Enable Intel GPU Power saving features                           
echo.                                                                     
echo.                      
echo.                                                       %p%[%w%T%p%]%w% Open Task Manager                           
echo.                                                                                                                                                                                     
echo.                                                       %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                                                     
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.                                                 %w% Select which type of Gpu you have:  
echo.                                                   %W%Enables GPU Power Saving features
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 pause goto rpg1
if /i %input% == 2 pause goto rpg2
if /i %input% == 3 pause goto rpg3
if /i %input% == T start taskmgr & pause goto p6
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu

:RedirectMenu
cls
pause goto rp6

:rpg1
:rpg3
echo %w%- Enabling GpuEnergy Driver %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu

:pg2
echo %w% - Enabling GPU Memory Clock Sleep State%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Thermal Throttling%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling GPU Power Down%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "0" /f 

echo %w%- Enabling GpuEnergy Driver %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f

echo %w% - Enabling Power Gating%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledrmdmaPowerGating" /t REG_DWORD /d "0" /f 

echo %w% - Enabling VCESW Clock Gating%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f 

echo %w% - Enabling UVD Clock Gating%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Active State Power Management %g%(ASPM)%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Ultra Low Power States %g%(ULPS) %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "1" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu



:p6
cls
echo.
echo.                   %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com 
echo.
echo.                                                     %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                     %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                     %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                     %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                     %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                     %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                           %p%[%w%1%p%]%w% Disable NVIDIA GPU Power saving features                             
echo.                                                                                            
echo.                                           %p%[%w%2%p%]%w% Disable AMD GPU Power saving features                                
echo.                                                                                          
echo.                                           %p%[%w%3%p%]%w% Disable Intel GPU Power saving features                           
echo.                                                                     
echo.                      
echo.                                                       %p%[%w%R%p%]%w% Revert
echo. 
echo.                                                       %p%[%w%T%p%]%w% Open Task Manager                           
echo.                                                                                                                                                                                     
echo.                                                       %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                                                     
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.                                                 %w% Select which type of Gpu you have:  
echo.                                                   %W%Disables GPU Power Saving features
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 pause goto pg1
if /i %input% == 2 pause goto pg2
if /i %input% == 3 pause goto pg3
if /i %input% == R pause goto rp6
if /i %input% == T start taskmgr & pause goto p6
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu

:RedirectMenu
cls
pause goto p6

:pg1
:pg3
echo %w%- Disabling GpuEnergy Driver %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f

echo %g%- note: most nvidia specific gpu power saving features are disabled via nvidia profile inspector which is in the gpu category

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu

:pg2
echo %w% - Disabling GPU Memory Clock Sleep State%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Thermal Throttling%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling GPU Power Down%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "1" /f 

echo %w%- Disabling GpuEnergy Driver %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f

echo %w% - Disabling Power Gating%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledrmdmaPowerGating" /t REG_DWORD /d "1" /f 

echo %w% - Disabling VCESW Clock Gating%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "0" /f 

echo %w% - Disabling UVD Clock Gating%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Active State Power Management %g%(ASPM)%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Ultra Low Power States %g%(ULPS) %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "0" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu



:p1
cls
echo %w% Import Exm Free Power Plan V7%b%
powercfg -import "C:\exm\Exm_Free_Power_Plan_V7.pow"
powercfg.cpl
timeout /t 1 /nobreak > NUL
echo.
echo.	
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto power

:p5
echo %w% - Disabling Fast Startup %g%(fast startup is bad for your pc, even if it speeds up booting by a few seconds) %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Hibernation%b%
powercfg /h off
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Sleep Study %g%(you should only shutdown your pc, dont put it to sleep, its bad for your pc) %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto power


:skiplans
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu

:p3
echo %w% - Disabling Energy Logging + Power Telemetry%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto power

:P2
cls

echo %w% - Disabling StorPort Idle%b%
for /f "tokens=*" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do reg add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d "0" /f

echo %w%- Disabling Link State Power Managment %b%
echo %w%- Disabling HDD Parking %b%
echo %w%- Disabling HIPM %b%
echo %w%- Disabling DIPM %b%
for %%i in (EnableHIPM EnableDIPM EnableHDDParking) do for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%i" ^| findstr "HKEY"') do reg add "%%a" /v "%%i" /t REG_DWORD /d "0" /f


echo %w% - Disabling GPU Energy Driver%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Disabling CoalescingTimerInterval%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Power Throttling%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto power


:9
:RAM
cls
echo.
echo.                             %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                    %p%███╗   ███╗███████╗███╗   ███╗ █████╗ ██████╗ ██╗   ██╗     
echo.                                                    %p%████╗ ████║██╔════╝████╗ ████║██╔══██╗██╔══██╗╚██╗ ██╔╝
echo.                                                    %p%██╔████╔██║█████╗  ██╔████╔██║██║  ██║██████╔╝ ╚████╔╝         
echo.                                                    %p%██║╚██╔╝██║██╔══╝  ██║╚██╔╝██║██║  ██║██╔══██╗  ╚██╔╝    
echo.                                                    %p%██║ ╚═╝ ██║███████╗██║ ╚═╝ ██║╚█████╔╝██║  ██║   ██║        
echo.                                                    %p%╚═╝     ╚═╝╚══════╝╚═╝     ╚═╝ ╚════╝ ╚═╝  ╚═╝   ╚═╝         
echo.                                        %b%"═════════════════════════════════════════════════════════════════════════════"%w%                                           
echo.                                                                   Select how much ram you have:              
echo.                                                                                          
echo.                                           %p%[%w%1%p%]%w% 4GB                       %p%[%w%2%p%]%w% 8GB                    %p%[%w%3%p%]%w% 12GB                      
echo.                                                                                               
echo.                                           %p%[%w%4%p%]%w% 16GB                      %p%[%w%5%p%]%w% 24GB                   %p%[%w%6%p%]%w% 32GB
echo.  
echo.                                           %p%[%w%7%p%]%w% 48GB                      %p%[%w%8%p%]%w% 64GB                   %p%[%w%9%p%]%w% 128GB 
echo. 
echo.                                                                                       
echo.                                           %p%%p%%p%%p%                              %p%[%w%T%p%]%w% Open Task Manager  
echo.
echo.                                           %p%%p%%p%%p%                              %p%[%w%M%p%]%w% Back to menu        
echo.
echo.                                           %p%%p%%p%%p%                              %p%[%w%R%p%]%w% Revert                              
echo.                                                                                   
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════"%w% 
echo.                                           %w% Optimizes a bunch of RAM related registry values for optimal performance 
echo.                                              %W% Disablings a bunch of useless features which hinder your performance
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════"%w% 
echo.
echo.

set /p input=:
if /i %input% == 1 pause goto 4GB
if /i %input% == 2 pause goto 8GB
if /i %input% == 3 pause goto 12GB
if /i %input% == 4 pause goto 16GB
if /i %input% == 5 pause goto 24GB
if /i %input% == 6 pause goto 32GB
if /i %input% == 7 pause goto 48GB
if /i %input% == 8 pause goto 64GB
if /i %input% == 9 pause goto 128GB
if /i %input% == M cls & pause goto menu
if /i %input% == T start taskmgr 
if /i %input% == R pause goto revertram
) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu

:RedirectMenu
cls
pause goto :9

:revertram
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 
chcp 437 >nul 2>&1
echo %w% - Enabling Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Disabling Large System Cache%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f

echo %w% - Enabling Page Combining%b%
chcp 437 >nul 2>&1
PowerShell -Command "Enable-MMAgent -PageCombining" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Enabling Paging Executive%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Prefetch and superfetch%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu


:4GB
chcp 437 >nul 2>&1
echo %w% - Enabling Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "4194304" /f 

pause goto rest

:8GB
chcp 437 >nul 2>&1
echo %w% - Enabling Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "8388608" /f 


pause goto rest

:12GB
chcp 437 >nul 2>&1
echo %w% - Enabling Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "12582912" /f 


pause goto rest

:16GB

chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "16777216" /f 


pause goto rest

:24GB
chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "25165824" /f 

pause goto rest

:32GB
chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "33554432" /f 

pause goto rest

:48GB
chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "50331648" /f 


pause goto rest

:64GB
chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "67108864" /f 

pause goto rest

:128GB
chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "134217728" /f 


pause goto rest

:rest
echo %w% - Disabling Large System Cache%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f

echo %w% - Disabling Page Combining%b%
chcp 437 >nul 2>&1
PowerShell -Command "Disable-MMAgent -PageCombining" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Disabling Paging Executive%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Prefetch and superfetch%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetch" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
sc stop "SysMain" & sc config "SysMain" start=disabled
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu




:g1
cls
echo.
echo.
echo.
echo.                                                              %p%███╗  ██╗██╗   ██╗██╗██████╗ ██╗ █████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%████╗ ██║██║   ██║██║██╔══██╗██║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%██╔██╗██║╚██╗ ██╔╝██║██║  ██║██║███████║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██║╚████║ ╚████╔╝ ██║██║  ██║██║██╔══██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║ ╚███║  ╚██╔╝  ██║██████╔╝██║██║  ██║  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚══╝   ╚═╝   ╚═╝╚═════╝ ╚═╝╚═╝  ╚═╝   ╚═════╝ ╚═╝      ╚═════╝ 

echo %w% - Applying EXMTWEAKS Nvidia Profile Inspector Profile %g%(optimizes nvidia control panel 3D settings and much more) %b%
start "" /wait "C:\exm\Nvidia_Porfile_Inspector_2.4.0.19.exe" "C:\exm\EXM_Free_NVPI_V8.nip" 

echo %w% - Forcing Contigous Memory Allocation %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f


echo %w%- Disabling HDCP%b%

chcp 437 >nul 2>&1
for /f "delims=" %%m in ('powershell -NoProfile -Command "Get-WmiObject Win32_VideoController | Where-Object { $_.PNPDeviceID -like 'PCI\\VEN_*' } | ForEach-Object { $_.PNPDeviceID }"') do (
    for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%m" /v "Driver" 2^>nul') do (
        for /f %%g in ('echo %%a ^| findstr "{"') do (
            reg add "HKLM\SYSTEM\ControlSet001\Control\Class\%%g" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f
        )
    )
)

chcp 65001 >nul 2>&1

echo %w%- Disabling Preemption%b%			 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t Reg_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t Reg_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "Preemption" /t REG_DWORD /d 0 /f


echo %w% - Setting NVIDIA Latency Tolerance%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "1" /f 
echo %w%- Latency Tolernace %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f

echo %w% - Disabling NVIDIA Telemetry %g%(If disabled already, it may show errors)%b%
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f 
schtasks /change /Disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
echo %w% - Deleting Nvidia Telemetry %b%	
rmdir /s /q "C:\Windows\System32\drivers\NVIDIA Corporation"
cd /d "C:\Windows\System32\DriverStore\FileRepository\"
dir NvTelemetry64.dll /a /b /s
del NvTelemetry64.dll /a /s
reg add "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f >nul 2>&1		 
timeout /t 3 /nobreak > NUL


pause goto hardwareacceleration


:g2
cls
echo.
echo.
echo.
echo.                                                              %p% █████╗ ███╗   ███╗██████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%██╔══██╗████╗ ████║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%███████║██╔████╔██║██║  ██║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██╔══██║██║╚██╔╝██║██║  ██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║  ██║██║ ╚═╝ ██║██████╔╝  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝    ╚═════╝ ╚═╝      ╚═════╝ 
timeout 1 /nobreak > NUL

echo %w%- Disabling High-Bandwidth Digital Content Protection %g%(HDCP) %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t REG_BINARY /d "0100000001000000" /f 

echo %w% - Disabling Display Refresh Rate Override%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "0" /f 

echo %w% - Disabling SnapShot%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Anti Aliasing%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "0" /f 

echo %w% - Disabling Subscriptions%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Anisotropic Filtering%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "0" /f 

echo %w% - Disabling Radeon Overlay%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "false" /f  

echo %w% - Enabling Adaptive DeInterlacing%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Adaptive De-interlacing" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Skins%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "false" /f  

echo %w% - Disabling Automatic Color Depth Reduction%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "0" /f 


echo %w% - Enabling De-Lag%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DeLagEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Frame Rate Target%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling DMA%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledMACopy" /t REG_DWORD /d "1" /f 
echo %w% - Enabling BlockWrite%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Stutter Mode%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Preemption%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f

echo %w% - Setting Main3D%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f 

echo %w% - Setting FlipQueueSize%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_BINARY /d "3100" /f 

echo %w% - Setting Shader Cache Size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f 

echo %w% - Configuring TFQ%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f 

echo %w% - Disabling AMD Logging%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f 

echo %w%- Latency Tolernace %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f

timeout 2 > nul
cls
pause goto hardwareacceleration



:hardwareacceleration
cls
echo.
echo.                             %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com   
echo.  
echo.                                                    %p% ██████╗ ██████╗ ██╗   ██╗   ██╗  ██╗ ██╗       ██╗ █████╗  █████╗ 
echo.                                                    %p%██╔════╝ ██╔══██╗██║   ██║   ██║  ██║ ██║  ██╗  ██║██╔══██╗██╔══██╗
echo.                                                    %p%██║  ██╗ ██████╔╝██║   ██║   ███████║ ╚██╗████╗██╔╝███████║██║  ╚═╝
echo.                                                    %p%██║  ╚██╗██╔═══╝ ██║   ██║   ██╔══██║  ████╔═████║ ██╔══██║██║  ██╗
echo.                                                    %p%╚██████╔╝██║     ╚██████╔╝   ██║  ██║  ╚██╔╝ ╚██╔╝ ██║  ██║╚█████╔╝
echo.                                                    %p% ╚═════╝ ╚═╝      ╚═════╝    ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝  ╚═╝ ╚════╝   
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                
echo.                                                           %p%[%w%1%p%]%w% GPU Hardware Acceleration Off %g%(Recommended)
echo.  
echo.                                                           %p%[%w%2%p%]%w% GPU Hardware Acceleration On %g%(Default)
echo. 
echo.                                                                                         
echo.                                                                          %p%[%w%M%p%]%w% Back to menu   
echo.                     
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                          %W%Enables/Disables Gpu hardware Accelerated Schedueling, in most cases its better disabled
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 
echo. 

set /p input=:
if /i %input% == 1 pause goto hwacoff
if /i %input% == 2 pause goto hwacon
if /i %input% == M CLS & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect 

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenue
:RedirectMenu
cls
pause goto :hardwareacceleration

:HWACon
echo %w%- Enabling Hardware Acceleration %b% 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
echo.
echo.
echo.
echo.                                              %b%"═══════════════════════════════════════════════════════"
echo.                                                %w%  Operation Completed, Press any key to continue...  
echo.                                              %b%"═══════════════════════════════════════════════════════"
pause > nul
cls
pause goto menu

:HWACoff
echo %w%- Disabling Hardware Acceleration %b% 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 1 /f
echo.
echo.
echo.
echo.                                              %b%"═══════════════════════════════════════════════════════"
echo.                                                %w%  Operation Completed, Press any key to continue...  
echo.                                              %b%"═══════════════════════════════════════════════════════"
pause > nul
cls
pause goto menu





:k1
cls
echo.
echo.
echo.
echo.
echo.                                                                           %p%███╗   ███╗ █████╗ ██╗   ██╗ ██████╗███████╗   █████╗ ███╗  ██╗██████╗   ██╗  ██╗██████╗ 
echo.                                                                           %p%████╗ ████║██╔══██╗██║   ██║██╔════╝██╔════╝  ██╔══██╗████╗ ██║██╔══██╗  ██║ ██╔╝██╔══██╗
echo.                                                                           %p%██╔████╔██║██║  ██║██║   ██║╚█████╗ █████╗    ███████║██╔██╗██║██║  ██║  █████═╝ ██████╦╝
echo.                                                                           %p%██║╚██╔╝██║██║  ██║██║   ██║ ╚═══██╗██╔══╝    ██╔══██║██║╚████║██║  ██║  ██╔═██╗ ██╔══██╗
echo.                                                                           %p%██║ ╚═╝ ██║╚█████╔╝╚██████╔╝██████╔╝███████╗  ██║  ██║██║ ╚███║██████╔╝  ██║ ╚██╗██████╦╝
echo.                                                                           %p%╚═╝     ╚═╝ ╚════╝  ╚═════╝ ╚═════╝ ╚══════╝  ╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝   ╚═╝  ╚═╝╚═════╝ 
echo.
echo.
echo.
echo.	
echo %w% - Setting CSRSS (KBM Drivers) IO and CPU Priority to high%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f 

echo %w% - Disabling Filter Keys %g%(the filterkeys app is completely useless placebo, dont use it)%b%
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
echo %w% - Disabling Toggle Keys%b%
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
echo %w% - Disabling Sticky Keys%b%
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
echo %w% - Disabling Mouse Keys%b%
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f

echo %w% - Disabling Mouse Acceleration%b%
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f

echo %w% - Enabling 1:1 Pixel Mouse Movements%b%
reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f

echo %w% - Reducing Keyboard Repeat Delay%b%
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f

echo %w% - Increasing Keyboard Repeat Rate%b%
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto kbm,

:3
:kbm
cls
echo.
echo.                     %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.
echo.                                                           %p% ██╗  ██╗██████╗ ███╗   ███╗
echo.                                                           %p% ██║ ██╔╝██╔══██╗████╗ ████║
echo.                                                           %p% █████═╝ ██████╦╝██╔████╔██║
echo.                                                           %p% ██╔═██╗ ██╔══██╗██║╚██╔╝██║
echo.                                                           %p% ██║ ╚██╗██████╦╝██║ ╚═╝ ██║
echo.                                                           %p% ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝    
echo.                                        %b%"═══════════════════════════════════════════════════════════════"%w%                    
echo.                                                                                          
echo.                                                      %p%[%w%1%p%]%w% Apply KBM Registry Optimizations       
echo.                                                                                           
echo.                                                      %p%[%w%2%p%]%w% Set KBM Data Queue Size   
echo.
echo.                                                      %p%[%w%3%p%]%w% Apply Usb Optimizations
echo.                                                                                          
echo.                                                                                            
echo.                                                              %p%[%w%M%p%]%w% Back to menu   
echo.
echo.                                                              %p%[%w%R%p%]%w% Revert  
echo.                                                                                            
echo.                                        %b%"════════════════════════════════════════════════════════════════"
echo.                                        %w% Optimizes a bunch of mouse and keyboard related registry settings
echo.                                        %b%"════════════════════════════════════════════════════════════════"
echo.

set /p input=:
if /i %input% == 1 pause goto k1
if /i %input% == 2 pause goto k2
if /i %input% == 3 pause goto k3
if /i %input% == r pause goto revertkeyboard
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto :kbm

:revertkeyboard
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 

echo %w% - Settings Csrss to default%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "2" /f 

chcp 437 >nul 2>&1
for /f "delims=" %%i in ('powershell -NoProfile -Command "Get-PnpDevice -Class USB | Where-Object { $_.InstanceId -like 'PCI\\VEN_*' } | ForEach-Object { $_.InstanceId }"') do (
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /f
)
chcp 65001 >nul 2>&1

echo %w% - Thread Priority%b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /f
echo %w% - Enabling USB Selective Suspend%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "0" /f 


echo %w% - Reverting Data queue size%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "256" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "256" /f

echo %w% - Enabling sticky keys, toggle keys etc...%b%
reg delete "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /f
reg delete "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /f
reg delete "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /f
reg delete "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /f



echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu

:k3
echo %w% - Disabling USB PowerSavings%b%
for /f "delims=" %%i in ('powershell -Command "Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -like 'PCI\\VEN_*' } | ForEach-Object { $_.InstanceId }"') do (
    set "pnpid=%%i"
    setlocal enabledelayedexpansion
    set "pnpid=!pnpid:\=\\!"
    set "regpath=HKLM\SYSTEM\CurrentControlSet\Enum\!pnpid!\Device Parameters"
    reg add "!regpath!" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f
    reg add "!regpath!" /v "D3ColdSupported" /t REG_DWORD /d "0" /f
    reg add "!regpath!" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f
    reg add "!regpath!" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f
    reg add "!regpath!" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f
    reg add "!regpath!" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f
    reg add "!regpath!" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f

)
  
echo %w% - Thread Priority%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f

echo %w% - Disabling USB Selective Suspend%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "1" /f 


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu


:k2
:dataqueue
cls
echo.
echo.                             %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                %p%██████╗  █████╗ ████████╗ █████╗    ██████╗ ██╗   ██╗███████╗██╗   ██╗███████╗  
echo.                                                %p%██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗  ██╔═══██╗██║   ██║██╔════╝██║   ██║██╔════╝  
echo.                                                %p%██║  ██║███████║   ██║   ███████║  ██║██╗██║██║   ██║█████╗  ██║   ██║█████╗    
echo.                                                %p%██║  ██║██╔══██║   ██║   ██╔══██║  ╚██████╔╝██║   ██║██╔══╝  ██║   ██║██╔══╝    
echo.                                                %p%██████╔╝██║  ██║   ██║   ██║  ██║   ╚═██╔═╝ ╚██████╔╝███████╗╚██████╔╝███████╗  
echo.                                                %p%╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝     ╚═╝    ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝  
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"   
echo.                                                                                                                       
echo.                                         %p%[%w%1%p%]%w% 13 %G%(High end CPU)              %p%[%w%2%p%]%w% 18 %g%(Mid end CPU)               %p%[%w%3%p%]%w% 22 %g% (Low end CPU)                 
echo.  
echo.                                                                                                                                                                                      
echo.                                         %p%%p%%p%%p%                                      %p%[%w%R%p%]%w% Revert                                    
echo.                                                                                                                
echo.                                         %p%%p%%p%%p%                                      %p%[%w%T%p%]%w% Open Task Manager                                     
echo.                                                                                                                       
echo.                                         %p%%p%%p%%p%                                      %p%[%w%E%p%]%w% Exit               
echo.                                                                                          
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.                                                         %w% The lower the value, the less peripheral latency you will have
echo.                                                 %w% But it may cause KBM stutters and lag on lower end pc's if the value is too low
echo.
echo.                                           %w% Comment Your CPU under the tutorial youtube video, and we will tell you which value to use
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.
set /p input=: 
if /i %input% == 1 pause goto 13v
if /i %input% == 2 pause goto 18v
if /i %input% == 3 pause goto 22v
if /i %input% == T start taskmgr & pause goto k2
if /i %input% == M cls & pause goto KBM
if /i %input% == R pause goto dqsrevert
) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 
pause goto Redirectmouse

:Redirectmouse
cls
pause goto 3

:dqsrevert
echo %w% - Default %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "256" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "256" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
exit

:13v
echo %w% - 13 %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "19" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "19" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                 %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto 3

:18v
echo %w% - 18 %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "24" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "24" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto 3


:22v
echo %w% - 22 %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "34" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "34" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto 3






:6
:clean
cls
echo.
echo.                     %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                      %p% █████╗ ██╗     ███████╗ █████╗ ███╗  ██╗  
echo.                                                      %p%██╔══██╗██║     ██╔════╝██╔══██╗████╗ ██║
echo.                                                      %p%██║  ╚═╝██║     █████╗  ███████║██╔██╗██║      
echo.                                                      %p%██║  ██╗██║     ██╔══╝  ██╔══██║██║╚████║ 
echo.                                                      %p%╚█████╔╝███████╗███████╗██║  ██║██║ ╚███║    
echo.                                                      %p% ╚════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚══╝      
echo.                                        %b%"══════════════════════════════════════════════════════════════════"%w%                
echo.                                                                                                       
echo.                                           %p%[%w%1%p%]%w% Clean Temporary Device Data             %p%[%w%2%p%]%w% Windows Clean Manager   
echo. 
echo.                                                                                                                                                                
echo.                                             %p%%p%%p%%p%                       %p%[%w%M%p%]%w% Back to menu                               
echo.                                                                                    
echo.                                        %b%"═══════════════════════════════════════════════════════════════════"
echo.                                                    %W% Cleans a bunch of temporary data off your pc
echo.                                                  %W% Deletes old drivers, cache, logs and a lot more
echo.                                        %b%"═══════════════════════════════════════════════════════════════════"
echo. 
set /p input=:
if /i %input% == 1 pause goto c1
if /i %input% == 2 pause goto c2

if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto 6


:c1
cls
echo %w% -  Cleaning Useless Device Data...%b%
chcp 437 > nul
@echo on
POWERSHELL "$Devices = Get-PnpDevice | ? Status -eq Unknown;foreach ($Device in $Devices) { &\"pnputil\" /remove-device $Device.InstanceId }"
@echo off
chcp 65001 > nul
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto 6

:c2
cls
start cleanmgr.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto menu

:revertall
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.
::bcd

echo %w% - Enabling Energy Logging + Power Telemetry%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "1" /f 

echo %w%- Enabling Link State Power Managment %b%
echo %w%- Enabling HIPM %b%
echo %w%- Enabling DIPM %b%
echo %w%- Enabling HDD Parking %b%
for %%i in (EnableHIPM EnableDIPM EnableHDDParking) do for /f %a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%i" ^| findstr "HKEY"') do reg add "%a" /v "%%i" /t REG_DWORD /d "1" /f
	
echo %w% - Enabling GPU Energy Driver%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Enabling CoalescingTimerInterval%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "1" /f  

echo %w% - Enabling Power Throttling%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "0" /f 

echo %w% - Restoring power plans%b%
powercfg –restoredefaultschemes

echo %w% - Enabling Fast Startup %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Hibernation%b%
powercfg /h on
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Sleep Study 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "0" /f 

echo %w% - Enabling StorPort Idle%b%
for /f "tokens=*" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do reg add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d "1" /f


echo %w% - Disabling Dynamic Tick%b%
bcdedit /set Disabledynamictick yes >nul 2>&1
echo %w% - Disabling High Precision Event Timer (HPET)%b%
bcdedit /deletevalue useplatformclock  >nul 2>&1
echo %w% - Disabling Synthetic Timers%b%
bcdedit /set useplatformtick yes  >nul 2>&1 


echo %w% - MMCSS Priority For Low Latency%b%
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /f

echo %w% - Setting Win32Priority%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "10" /f 

echo %w% - Decreasing process kill time and menu show delay%b%
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f

echo %w% - Setting IO Time Stamp%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d "1" /f 

echo %w% - Setting Latency Tolerance%b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /f 

echo %w% - Setting System Responsiveness%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "14" /f 

echo %w% - Enabling Biometrics%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "1" /f

echo %w% - Enabling Game mode%b%
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f

echo %w% - Optimizing Windows Search%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsAssignedAccess" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsWindowsHelloActive" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DoNotUseWebResults" /t REG_DWORD /d "0" /f

echo %w% - Track Only Important Failure Events %b%
Auditpol /set /subcategory:"Process Termination" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"RPC Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Filtering Platform Connection" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"DPAPI Activity" /failure:Disable /failure:Disable >nul 2>&1 
Auditpol /set /subcategory:"IPsec Driver" /success:	 /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Other System Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security State Change" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security System Extension" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"System Integrity" /failure:Disable /failure:Enable >nul 2>&1 
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "1" /f

echo %w% - Enabling Windows Insider Experiments%b%
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Activity feed%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft" /v "AllowNewsAndInterests" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "1" /f

echo %w% - Enabling Automatic Maintenance%b%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Notifications%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "0" /f

echo %w%- Enabling Shared Experiences %b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "1" /f

echo %w% - Disabling Setting Synchronization%b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t Reg_DWORD /d "5" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t Reg_DWORD /d ""0"" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t Reg_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t Reg_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t Reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t Reg_DWORD /d "0" /f

echo %w%- Dont Stop Reinstalling Preinstalled apps %b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "1 /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "1" /f

echo %w%- Enabling Background Apps %b%
reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "0" /f 
reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "2" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "2" /f 

echo %w%- Enabling Transparency %b%
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "1" /f
  
echo %w% - Enabling GameMode%b%
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f 
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Reverting Combaility Settings%b%
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AllowTelemetry" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableEngine" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "0" /f

echo %w% - Enabling IoLatencyCap%b%
FOR /F "eol=E" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
	reg add "%%a" /F /V "IoLatencyCap" /T REG_DWORD /d 0 >nul 2>&1

	FOR /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\=!
		SET STR=!STR:\Parameters=!
		ECHO Setting IoLatencyCap to 0 in !STR!
	)
)

echo %w% - Enabling DmaRemapping%b%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy" /v "value" /t REG_DWORD /d "2" /f
for /f %%i in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /s /f DmaRemappingCompatible ^| find /i "Services\" ') do (
	echo %%i...
	reg add "%%i" /v "DmaRemappingCompatible" /t REG_DWORD /d "1" /f
)

echo %w% - Redownload default windows apps %g%(Errors may show, thats because the app that the command is trying to install is already installed, so dont worry)%b%
chcp 437 > nul
Powershell -Command "Get-AppxPackage -allusers | foreach {Add-AppxPackage -register “$($_.InstallLocation)\appxmanifest.xml” -DisabledevelopmentMode}"

powershell:Start-Process -FilePath winget -ArgumentList "install --force  --accept-source-agreements --accept-package-agreements --silent Microsoft.Edge " -NoNewWindow
chcp 65001 > nul

:: Addons
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF90-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF91-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF94-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{333C7BC4-460F-11D0-BC04-0080C7055A83}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{373984C9-B845-449B-91E7-45AC83036ADE}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{6BF52A52-394A-11D3-B153-00C04F79FAA6}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2049-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2051-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A05-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A06-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A07-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A08-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A0A-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{D2517915-48CE-4286-970F-921E881B8C5C}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{EE09B103-97E0-11CF-978F-00A02463E06F}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F32-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F33-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F34-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F35-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F36-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F39-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /f >nul 2>&1

::DnsPriority
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /f >nul 2>&1

::Network Throttling Index
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /f >nul 2>&1

:: MaxUserPort, TcpTimedWaitDelay, and DefaultTTL
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /f >nul 2>&1

::TCP Hueretics
netsh int tcp set heuristics Enabled >nul 2>&1

:: TCP settings and MTU with netsh
netsh int tcp set supplemental internet congestionprovider=default >nul 2>&1
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1492 store=persistent >nul 2>&1
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1280 store=persistent >nul 2>&1
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent >nul 2>&1
netsh interface ipv6 set subinterface "Ethernet" mtu=1280 store=persistent >nul 2>&1

:: Active Probing
reg add "HKLM\System\ControlSet001\services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d 1 /f >nul 2>&1

chcp 65001 >nul 2>&1
:: Disable Task Offloads
netsh int ip set global taskoffload=enabled >nul 2>&1

::  offload and network settings 
chcp 437 >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing enabled >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSideScaling enabled >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -Chimney enabled >nul 2>&1
PowerShell.exe Enable-NetAdapterLso -Name * >nul 2>&1
PowerShell.exe Enable-NetAdapterChecksumOffload -Name * >nul 2>&1
chcp 65001 >nul 2>&1

:: Re-enable Nagle's Algorithm, reset Interface Metric
chcp 437 >nul 2>&1
echo %w% - Enabling TCPNoDelay %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /f
)

echo %w% - Enabling TCP Ack Frequency %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /f
)

echo %w% - Disabling TCP Del AckTicks %b%
for /f "delims=" %%q in ('powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.InterfaceGuid }"') do (
    reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /f
)
chcp 65001 >nul 2>&1

:: MLD
netsh int ip set global dhcpmediasense=enabled >nul 2>&1
netsh int ip set global mediasenseeventlog=enabled >nul 2>&1
netsh int ip set global mldlevel=default >nul 2>&1
netsh int ip set global icmpredirects=enabled >nul 2>&1
netsh int tcp set global chimney=disabled >nul 2>&1
netsh int tcp set global dca=disabled >nul 2>&1
netsh int tcp set global netdma=enabled >nul 2>&1
netsh int tcp set global rsc=enabled >nul 2>&1
netsh int tcp set global maxsynretransmissions=5 >nul 2>&1
netsh int tcp set global timestamps=enabled >nul 2>&1
netsh int tcp set global ecncapability=enabled >nul 2>&1
netsh int tcp set heuristics enabled >nul 2>&1
netsh int tcp set heuristics wsh=enabled >nul 2>&1
netsh int tcp set security mpp=enabled >nul 2>&1
netsh int tcp set security profiles=enabled >nul 2>&1

for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
    reg delete "%%n" /v "AdvancedEEE" /f
    reg delete "%%n" /v "*EEE" /f
    reg delete "%%n" /v "EEE" /f
    reg delete "%%n" /v "EnablePME" /f
    reg delete "%%n" /v "EEELinkAdvertisement" /f

    reg delete "%%n" /v "AutoPowerSaveModeEnabled" /f
    reg delete "%%n" /v "DisableDelayedPowerUp" /f
    reg delete "%%n" /v "AutoDisableGigabit" /f
    reg delete "%%n" /v "EnableGreenEthernet" /f
    reg delete "%%n" /v "EnableSavePowerNow" /f
    reg delete "%%n" /v "EnablePowerManagement" /f
    reg delete "%%n" /v "NicAutoPowerSaver" /f
    reg delete "%%n" /v "PowerDownPll" /f
    reg delete "%%n" /v "PowerSavingMode" /f
    reg delete "%%n" /v "ReduceSpeedOnPowerDown" /f
    reg delete "%%n" /v "S5NicKeepOverrideMacAddrV2" /f

    reg delete "%%n" /v "EnableDynamicPowerGating" /f
    reg delete "%%n" /v "EnableConnectedPowerGating" /f

    reg delete "%%n" /v "GigaLite" /f
    reg delete "%%n" /v "ULPMode" /f

    reg delete "%%n" /v "EnableWakeOnLan" /f
    reg delete "%%n" /v "WakeOnDisconnect" /f
    reg delete "%%n" /v "*WakeOnMagicPacket" /f
    reg delete "%%n" /v "S5WakeOnLan" /f
    reg delete "%%n" /v "*WakeOnPattern" /f
    reg delete "%%n" /v "WakeOnLink" /f
    reg delete "%%n" /v "WolShutdownLinkSpeed" /f

    reg delete "%%n" /v "JumboPacket" /f

    reg delete "%%n" /v "TransmitBuffers" /f
    reg delete "%%n" /v "ReceiveBuffers" /f

    reg delete "%%n" /v "IPChecksumOffloadIPv4" /f
    reg delete "%%n" /v "LsoV1IPv4" /f
    reg delete "%%n" /v "LsoV2IPv4" /f
    reg delete "%%n" /v "LsoV2IPv6" /f
    reg delete "%%n" /v "PMARPOffload" /f
    reg delete "%%n" /v "PMNSOffload" /f
    reg delete "%%n" /v "TCPChecksumOffloadIPv4" /f
    reg delete "%%n" /v "TCPChecksumOffloadIPv6" /f
    reg delete "%%n" /v "UDPChecksumOffloadIPv6" /f
    reg delete "%%n" /v "UDPChecksumOffloadIPv4" /f

    reg delete "%%n" /v "RSS" /f
	reg delete "%%n" /v "*FlowControl" /f 
	reg delete "%%n" /v "FlowControlCap" /f
	reg delete "%%n" /v "RxAbsIntDelay" /f 
	reg delete "%%n" /v "TxIntDelay" /f 
	reg delete "%%n" /v "TxAbsIntDelay" /f 
	reg delete "%%n" /v "FatChannelIntolerant" /f 
)

netsh int tcp set global autotuninglevel=normal

echo %w% - Enabling SSD Power Savings %b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitLatencyMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdlePowerMw" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitEnergyMicroJoules" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitLatencyMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdlePowerMw" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleTimeLengthMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitEnergyMicroJoules" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitLatencyMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdlePowerMw" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleTimeLengthMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitEnergyMicroJoules" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitLatencyMs" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdlePowerMw" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleTimeLengthMs" /t REG_DWORD /f 

echo %w% - NFTS Tweaks%b%
fsutil behavior set memoryusage 1 >nul 2>&1
fsutil behavior set mftzone 1 >nul 2>&1
fsutil behavior set Disablinglastaccess 1 >nul 2>&1
fsutil behavior set Disabledeletenotify 1 >nul 2>&1
fsutil behavior set encryptpagingfile 0 >nul 2>&1

echo %w% - User Write Cache %b%
For /f "Delims=" %%k in ('Reg.exe Query HKLM\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
reg delete "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /f 
reg add "%%k\Device Parameters\Disk" /v CacheIsPowerProtected /t REG_DWORD /d 1 /f
)

echo %w%- Reverting Intel-Specific CPU Tweaks %b%
bcdedit /deletevalue allowedinmemorysettings
bcdedit /deletevalue isolatedcontext

echo %w%- Reverting Distribute Timers %b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /f

echo %w%- Reverting TSX %b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /f

echo %w%- Reverting Even Processor %b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /f

echo %w%- Reverting CPU Cooling Tweaks %b%
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Logical Processors %b%
bcdedit /deletevalue {current} numproc

echo %w%- Reverting C-States %b%
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Higher P-States on Lower C-States %b%
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Core Parking %b%
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 10
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Throttle States %b%
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "5" /f

echo %w%- Fair Share CPU Scheduling %b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System" /v EnableCpuQuota /f

echo %w% Revert Processor Performance Time Check Interval %b%
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 15
Powercfg -setactive scheme_current

echo %w% - Enabling Gamdvr%b%
reg add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "1" /f

echo %w% - Enabling Xbox Services%b%
sc config xbgm start= demand >nul 2>&1
sc config XblAuthManager start= auto
sc config XblGameSave start= manual
sc config XboxGipSvc start= demand
sc config XboxNetApiSvc start= demand

echo %w% - Enabling Isolation Memory Integrity%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling HVCIMAT%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "1" /f 
echo %w% - Enabling ExceptionChainValidation%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Sehop%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling CFG%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Protection Mode%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Spectre And Meltdown%b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /f 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /f
echo %w% - Enabling Address Space Layout Randomization%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f  

echo %w% - Enabling Hyper-V%b%
sc config HvHost start=auto
sc config vmickvpexchange start=auto 
sc config vmicguestinterface start=auto
sc config vmicshutdown start=auto
sc config vmicheartbeat start=auto 
sc config vmicvmsession start=auto
sc config vmicrdv start=auto
sc config vmictimesync start=auto
sc config vmicvss start=auto
bcdedit /set hypervisorlaunchtype auto

echo %w% - Enabling Telemetry%b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater"
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask"
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /enable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /enable
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy"
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /enable
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT"
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent"
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /enable
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /enable
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /enable
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics"
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /enable
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks"
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /enable
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /enable
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific"
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack" /enable
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat"
schtasks /change /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" /enable
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /enable
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime"
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /enable
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
schtasks /change /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /enable
schtasks /end /tn "\Microsoft\Windows\Device Information\Device"
schtasks /change /tn "\Microsoft\Windows\Device Information\Device" /enable

echo %w% - Enabling Autologgers%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "1" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnabled" /t REG_DWORD /d "1" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "1" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Printing and maps Services  %b%
sc config MapsBroker start= enabled
sc config PrintNotify start= enabled
sc config Spooler start= enabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /enable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /enable 

echo %w% - Enabling Office Telemetry%b%
reg add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "SendTelemetry" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common" /v "qmEnable" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Firstrun" /v "Disablemovie" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableFileObfuscation" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "0" /f

echo %w% - Enabling Biometrics%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "2" /f

echo %w% - Enabling Microsoft store%b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 1 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 

chcp 437 >nul 2>&1
for /f "delims=" %%i in ('powershell -NoProfile -Command "Get-PnpDevice -Class USB | Where-Object { $_.InstanceId -like 'PCI\\VEN_*' } | ForEach-Object { $_.InstanceId }"') do (
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /f
    reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /f
)
chcp 65001 >nul 2>&1

echo %w% - Thread Priority%b%
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /f
echo %w% - Enabling USB Selective Suspend%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "0" /f 

echo %w% - Mouse and keyboard data queue size revert%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "256" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "256" /f

reg delete "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /f

reg delete "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /f

reg delete "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /f

reg delete "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /f

reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f

reg add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "10" /f

reg add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f

chcp 437 >nul 2>&1
echo %w% - Enabling Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Disabling Large System Cache%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f

echo %w% - Enabling Page Combining%b%
chcp 437 >nul 2>&1
PowerShell -Command "Enable-MMAgent -PageCombining" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Enabling Paging Executive%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Prefetch and superfetch%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "1" /f

:rp6
cls
echo.
echo.                    %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                     %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                     %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                     %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                     %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                     %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                     %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                           %p%[%w%1%p%]%w% Enable NVIDIA GPU Power saving features                             
echo.                                                                                            
echo.                                           %p%[%w%2%p%]%w% Enable AMD GPU Power saving features                                
echo.                                                                                          
echo.                                           %p%[%w%3%p%]%w% Enable Intel GPU Power saving features                           
echo.                                                                     
echo.                      
echo.                                                       %p%[%w%T%p%]%w% Open Task Manager                           
echo.                                                                                                                                                                                     
echo.                                                       %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                                                     
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.                                                 %w% Select which type of Gpu you have:  
echo.                                                   %W%Enables GPU Power Saving features
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 pause goto rpg1
if /i %input% == 2 pause goto rpg2
if /i %input% == 3 pause goto rpg3
if /i %input% == T start taskmgr & pause goto p6
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu

:RedirectMenu
cls
pause goto rp6

:rpg1
:rpg3
echo %w%- Enabling GpuEnergy Driver %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto :revertallgpu

:pg2
echo %w% - Enabling GPU Memory Clock Sleep State%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Thermal Throttling%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling GPU Power Down%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "0" /f 

echo %w%- Enabling GpuEnergy Driver %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f

echo %w% - Enabling Power Gating%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledrmdmaPowerGating" /t REG_DWORD /d "0" /f 

echo %w% - Enabling VCESW Clock Gating%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f 

echo %w% - Enabling UVD Clock Gating%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Active State Power Management %g%(ASPM)%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Ultra Low Power States %g%(ULPS) %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "1" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto :revertallgpu


:revertallgpu
cls
echo.
echo.                     %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                      %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                      %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                      %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                      %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                      %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                      %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═══════════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                                     %p%[%w%1%p%]%w% Revert NVIDIA GPU Optimizations                             
echo.                                                                                            
echo.                                                     %p%[%w%2%p%]%w% Revert AMD GPU Optimizations                                
echo.                                                                                          
echo.                                                     %p%[%w%3%p%]%w% Revert Intel GPU Optimizations                           
echo.                                                                     
echo.                                                                                                                                                                                                          
echo.                                                             %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.                                                     %w% Select which type of Gpu you have:  
echo. 
echo.                                               %W%  Reverts gpu tweaks made by the exm free utility
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 pause goto rg1
if /i %input% == 2 pause goto rg2
if /i %input% == 3 pause goto rg3
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu


:RedirectMenu
cls
pause goto revertgpu

:rg3
cls
echo.
echo.
echo.                                                       %p%   ██╗███╗  ██╗████████╗███████╗██╗        ██████╗ ██████╗ ██╗   ██╗
echo.                                                       %p%   ██║████╗ ██║╚══██╔══╝██╔════╝██║       ██╔════╝ ██╔══██╗██║   ██║
echo.                                                       %p%   ██║██╔██╗██║   ██║   █████╗  ██║       ██║  ██╗ ██████╔╝██║   ██║
echo.                                                       %p%   ██║██║╚████║   ██║   ██╔══╝  ██║       ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                       %p%   ██║██║ ╚███║   ██║   ███████╗███████╗  ╚██████╔╝██║     ╚██████╔╝  
echo.                                                       %p%   ╚═╝╚═╝  ╚══╝   ╚═╝   ╚══════╝╚══════╝   ╚═════╝ ╚═╝      ╚═════╝ 
echo.
echo.


echo %w% - Reverting Intel Gpu Tweaks%b%
for /f %%t in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "Intel" ^| findstr "HKEY"') do (

	reg add "%%t" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "0" /f
    reg add "%%t" /v "IncreaseFixedSegment" /t REG_DWORD /d "0" /f
    reg add "%%t" /v "AdaptiveVsyncEnabled" /t REG_DWORD /d "1" /f
    reg add "%%t" /v "DisablePFonDP" /t REG_DWORD /d "0" /f
    reg add "%%t" /v "EnableCompensationForDVI" /t REG_DWORD /d "0" /f
    reg add "%%t" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "1" /f
)
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto :menu

:rg2
:g2
cls
echo.
echo.
echo.
echo.                                                              %p% █████╗ ███╗   ███╗██████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%██╔══██╗████╗ ████║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%███████║██╔████╔██║██║  ██║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██╔══██║██║╚██╔╝██║██║  ██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║  ██║██║ ╚═╝ ██║██████╔╝  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝    ╚═════╝ ╚═╝      ╚═════╝ 
timeout 1 /nobreak > NUL


echo %w% - Enabling Display Refresh Rate Override%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "1" /f 

echo %w% - Enabling SnapShot%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Anti Aliasing%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "1" /f 

echo %w% - Enabling Subscriptions%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Anisotropic Filtering%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "1" /f 

echo %w% - Enabling Radeon Overlay%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "true" /f  


echo %w% - Enabling Skins%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "true" /f  

echo %w% - Enabling Automatic Color Depth Reduction%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Frame Rate Target%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling DMA%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledMACopy" /t REG_DWORD /d "1" /f 

echo %w% - Enabling BlockWrite%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "1" /f 
 
echo %w% - Enabling Preemption%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f

echo %w% - Enabling AMD Logging%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Reverting Latency Tolerance%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "0" /f

echo %w%- Enabling Hardware Acceleration %b% 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto :menu

:rg1
cls
echo.
echo.
echo.
echo.                                                              %p%███╗  ██╗██╗   ██╗██╗██████╗ ██╗ █████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%████╗ ██║██║   ██║██║██╔══██╗██║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%██╔██╗██║╚██╗ ██╔╝██║██║  ██║██║███████║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██║╚████║ ╚████╔╝ ██║██║  ██║██║██╔══██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║ ╚███║  ╚██╔╝  ██║██████╔╝██║██║  ██║  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚══╝   ╚═╝   ╚═╝╚═════╝ ╚═╝╚═╝  ╚═╝   ╚═════╝ ╚═╝      ╚═════╝ 

echo %w% - Reverting Contigous Memory Allocation %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "0" /f


echo %w%- Enabling HDCP%b%
for /f "delims=" %%m in ('powershell -NoProfile -Command "Get-WmiObject Win32_VideoController | Where-Object { $_.PNPDeviceID -like 'PCI\\VEN_*' } | ForEach-Object { $_.PNPDeviceID }"') do (
    for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%m" /v "Driver" 2^>nul') do (
        for /f %%g in ('echo %%a ^| findstr "{"') do (
            reg add "HKLM\SYSTEM\ControlSet001\Control\Class\%%g" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f
        )
    )
)

 

echo %w% - Enabling Preemption%b%

reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t Reg_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t Reg_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "1" /f


echo %w% - Reverting NVIDIA Latency Tolerance%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "0" /f 
echo %w% - Reverting Latency Tolerance%b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "0" /f

pause goto %w%- Enabling Hardware Acceleration %b% 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
pause goto :menu



:qos1
cls
echo %w%- Enabling all neccassary services needed to set a QOS policy %b%
chcp 437 >nul 2>&1
echo %w%- Enabling MSPacer %b%
powershell -NoProfile -Command "Enable-NetAdapterBinding -Name "*" -ComponentID ms_pacer"
chcp 65001 >nul 2>&1
echo %w%- Enabling PSCHED %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Psched" /v "Start" /t REG_DWORD /d "1" /f
timeout 2 > nul
cls
echo.
echo.
echo. %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo. %p%██████╗  █████╗ ██╗     ██╗ █████╗ ██╗   ██╗  ███╗  ██╗ █████╗ ███╗   ███╗███████╗
echo. %p%██╔══██╗██╔══██╗██║     ██║██╔══██╗╚██╗ ██╔╝  ████╗ ██║██╔══██╗████╗ ████║██╔════╝
echo. %p%██████╔╝██║  ██║██║     ██║██║  ╚═╝ ╚████╔╝   ██╔██╗██║███████║██╔████╔██║█████╗  
echo. %p%██╔═══╝ ██║  ██║██║     ██║██║  ██╗  ╚██╔╝    ██║╚████║██╔══██║██║╚██╔╝██║██╔══╝  
echo. %p%██║     ╚█████╔╝███████╗██║╚█████╔╝   ██║     ██║ ╚███║██║  ██║██║ ╚═╝ ██║███████╗
echo. %p%╚═╝      ╚════╝ ╚══════╝╚═╝ ╚════╝    ╚═╝     ╚═╝  ╚══╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝    
echo. %b%"════════════════════════════════════════════════════════════════════════════════"%w%  
echo.  %w%The name does not matter, its only for organization sake
echo.  %w%Generally, just name it after the game you want to prioritize
echo. 
set /p PROFILENAME="%w% %w%Enter a profile name for the QoS policy :%b% "                  
if %errorlevel% neq 1 pause goto QOS3
) ELSE ( 
cls
echo %w%- Invalid input, Please use alphanumberic numbers
pause goto qos1

:qos3
cls
echo.
echo. %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo. %p%███████╗██╗  ██╗███████╗  ███╗  ██╗ █████╗ ███╗   ███╗███████╗
echo. %p%██╔════╝╚██╗██╔╝██╔════╝  ████╗ ██║██╔══██╗████╗ ████║██╔════╝
echo. %p%█████╗   ╚███╔╝ █████╗    ██╔██╗██║███████║██╔████╔██║█████╗  
echo. %p%██╔══╝   ██╔██╗ ██╔══╝    ██║╚████║██╔══██║██║╚██╔╝██║██╔══╝  
echo. %p%███████╗██╔╝╚██╗███████╗  ██║ ╚███║██║  ██║██║ ╚═╝ ██║███████╗
echo. %p%╚══════╝╚═╝  ╚═╝╚══════╝  ╚═╝  ╚══╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝
echo. %b%"══════════════════════════════════════════════════════════════"%w%  
echo. %w% Select the .exe name of the game you would like to assign to %b%%PROFILENAME%
echo. 
set /p application= "%w%%w%Enter the EXE name of the app you want to prioritize:%b% "                  
for %%a in (%application%) do if /i "%%~xa"==".exe" pause goto qos5
for %%a in (%application%) do if /i not "%%~xa"==".exe" pause goto QOS4
) ELSE ( 
:QOS4
cls
echo %w%- Invalid input, Make sure the application name ends in .exe
pause goto qos3

:qos5
cls
echo.
echo.                          %w% You are using the FREE Version of EXM Tweaks, Unlock 10x more tweaks and completely Optimize your PC at exmtweaks.com
echo.
echo.                                                                %p%██████╗  ██████╗ █████╗ ██████╗ 
echo.                                                                %p%██╔══██╗██╔════╝██╔══██╗██╔══██╗
echo.                                                                %p%██║  ██║╚█████╗ ██║  ╚═╝██████╔╝
echo.                                                                %p%██║  ██║ ╚═══██╗██║  ██╗██╔═══╝ 
echo.                                                                %p%██████╔╝██████╔╝╚█████╔╝██║     
echo.                                                                %p%╚═════╝ ╚═════╝  ╚════╝ ╚═╝         
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════"%w%  
echo.                                           The network packets of %b%%application%%W% will be prioritized 
echo.                                           over other packets on your network or even apps running on your own PC.
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════"
echo.
echo.                                                                 %p%[%w%1%p%]%w% Create the QOS Priority                                                        
echo.                                                                                           
echo.                                                                 %p%[%w%2%p%]%w% Choose exe again                           
echo.                                                                     
echo.
echo.                                                                   %p%[%w%R%p%]%w% Revert QOS 
echo.                                                                                                                                                                                                          
echo.                                                                   %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 pause goto qos6
if /i %input% == 2 pause goto qos1
if /i %input% == R pause goto qosrevert
if /i %input% == M cls & pause goto menu

) ELSE (
echo Invalid Input & pause goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
pause goto RedirectMenu

:RedirectMenu
cl
pause goto :qos5


:qos6
echo.
echo.
echo.
echo %w%- Creating a QOS policy which will prioritze %b%%application% over other apps %b%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Version" /t REG_SZ /d "1.0" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Application Name" /t REG_SZ /d "%application%" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Protocol" /t REG_SZ /d "*" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Local Port" /t REG_SZ /d "*" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Local IP" /t REG_SZ /d "*" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Remote Port" /t REG_SZ /d "*" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Remote IP" /t REG_SZ /d "*" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "DSCP Value" /t REG_SZ /d "46" /f  
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Throttle Rate" /t REG_SZ /d "-1" /f  
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto nmenu

:qosrevert
echo.
echo.
echo.
echo %w%- Reverting the qos policy %b%
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Version" /f   
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Application Name" /f  
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Protocol" /f  
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Local Port" /f  
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Local IP" /f  
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Local IP Prefix Length" /f  
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Remote Port" /f  
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Remote IP" /f  
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Remote IP Prefix Length" /f  
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "DSCP Value" /f  
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\%PROFILENAME%" /v "Throttle Rate" /f  
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
pause goto nmenu