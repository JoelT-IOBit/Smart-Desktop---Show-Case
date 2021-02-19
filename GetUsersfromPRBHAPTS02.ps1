<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2019 v5.6.170
	 Created on:   	10/06/2020 15:43
	 Created by:   	joel.tricanji
	 Organization: 	
	 Filename:     	GetUsersfromPRBHAPTS02
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
# Declaration area


# Begin of script
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit
}
$liobase = get-process -IncludeUserName liobase
$username = $liobase.UserName
$username
# End of script
