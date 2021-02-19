<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2019 v5.6.170
	 Created on:   	10/06/2020 08:09
	 Created by:   	joel.tricanji
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#># Creates the folder structure for Smart-Desktop solution in general

# Variable Declaration 
$logfile = "$env:APPDATA\SD_installation_log.log"


#Script starts here:
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit
}

New-Item -ItemType "directory" -Path ($env:COMMONPROGRAMFILES + "\SDVAR") 2>&1 | Out-file -FilePath $logfile -Append
New-Item -ItemType "directory" -Path ($env:COMMONPROGRAMFILES + "\SDVAR\ADM\VAR\CONTENT") 2>&1 | Out-file -FilePath $logfile -Append
New-Item -ItemType "directory" -Path ($env:COMMONPROGRAMFILES + "\SDVAR\ADM\LOG") 2>&1 | Out-file -FilePath $logfile -Append
New-Item -ItemType "directory" -Path ($env:COMMONPROGRAMFILES + "\SmartDesktopTPZ\BIN") 2>&1 | Out-file -FilePath $logfile -Append


