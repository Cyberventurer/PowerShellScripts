# Project Name
PowerShell Scripts

## General Information
This project contains a collection of PowerShell scripts that I found a need for.

The first script, SearchLogFiles.ps1, searches log files for a keyword and write log entries with the specified keyword to a separate file for analysis.
Folders are searched recursively. If the output file does not exist, it will be created for you.

## Code Examples
.\SearchLogFiles.ps1 C:\Logs C:\Temp\SearchResults.txt "404 not found"
