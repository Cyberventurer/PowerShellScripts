<#
.SYNOPSIS
Search log files for a keyword.
.DESCRIPTION
Search log files for a keyword and write log entries with the specified keyword to a separate file for analysis.
.PARAMETER LogPath
Folder where the log files are stored. Folders are searched recursively.
.PARAMETER OutputFile
The full path and file name of the output file. If the file does not exist, it will be created.
.PARAMETER SearchString
The string to search for
.EXAMPLE
SearchLogFiles.ps1 C:\Logs C:\Temp\LogEntries.txt "404"
LogEntries.txt: 404 - Not found
#>
[CmdletBinding()]
param (
    [Parameter(ValueFromPipeline=$true, Mandatory=$true)][string]$LogPath, 
    [Parameter(ValueFromPipeline=$true, Mandatory=$true)][string]$OutputFile, 
    [Parameter(ValueFromPipeline=$true, Mandatory=$true)][string]$SearchString
)

Get-ChildItem -Path $LogPath -Recurse -Include *.log, *.txt | Select-String -Pattern $SearchString | Set-Content $OutputFile -Force