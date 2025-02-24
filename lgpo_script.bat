@echo off
echo Starting LGPO configuration...

:: Navigate to the LGPO directory
cd C:\IT\LGPO\LGPO_30
echo Changed directory to C:\IT\LGPO\LGPO_30
pause

:: List the contents of the directory
dir
pause

:: Apply the first GPO
echo Applying the first GPO...
LGPO.exe /g "C:\IT\U_STIG_GPO_Package_October_2024\DoD Windows 11 v2r2\GPOs\{EB1E499B-1B94-4683-B8DC-A13575A8A273}"
pause

:: Apply the second GPO
echo Applying the second GPO...
LGPO.exe /g "C:\IT\U_STIG_GPO_Package_October_2024\DoD Windows 11 v2r2\GPOs\{F4C011BE-5620-49A3-9840-9A71E3537562}"
pause

:: Force a group policy update
echo Forcing Group Policy update...
gpupdate /force
pause

echo LGPO configuration complete.
