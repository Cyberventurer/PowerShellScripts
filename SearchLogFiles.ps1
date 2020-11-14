<#
.SYNOPSIS
Search log files for a keyword.
.DESCRIPTION
Search log files for a keyword and write log entries with the specified keyword to a separate file for analysis.
.PARAMETER LogPath
Folder where the log files are stored
.PARAMETER OutputFile
The full path and file name of the output file
.PARAMETER SearchString
The string to search for
.EXAMPLE
C:\Logs C:\Temp\LogEntries.txt "404"
404 - Not found
#>
[CmdletBinding()]
param (
    [Parameter(Mandatory)][string]$LogPath, 
    [Parameter(Mandatory)][string]$OutputFile, 
    [Parameter(Mandatory)][string]$SearchString
)

Get-ChildItem -Path $LogPath -Recurse -Include *.log, *.txt | Select-String -Pattern $SearchString | Set-Content $OutputFile -Force
