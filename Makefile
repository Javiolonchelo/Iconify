company = "Javiolonchelo"
version = "1.0.1"

# If needed, open terminal with admin privileges 
ps2exe:
	powershell.exe Set-ExecutionPolicy Bypass -Scope CurrentUser
	powershell.exe install-module ps2exe

default:
	powershell.exe Set-ExecutionPolicy Bypass -Scope CurrentUser
	powershell.exe Invoke-PS2EXE .\Iconify.ps1 .\Iconify.exe -iconFile .\app_icon.ico -company $(company) -version $(version) -noConsole -verbose