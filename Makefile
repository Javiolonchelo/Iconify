# NOTE: Administrator privileges may be needed to run this Makefile

company = "Javiolonchelo"
version = "1.0.1"

default: install
 
ps2exe:
	powershell.exe Set-ExecutionPolicy Bypass -Scope CurrentUser
	powershell.exe install-module ps2exe

install:
	powershell.exe Set-ExecutionPolicy Bypass -Scope CurrentUser
	powershell.exe Invoke-PS2EXE .\Iconify.ps1 .\Iconify.exe -iconFile .\app_icon.ico -company $(company) -version $(version) -noConsole -verbose