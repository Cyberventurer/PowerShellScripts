$LogPath = Read-Host "Enter the path for the log files: "

$OutFile = Read-Host "Enter the full path and file name for the output file: "

$SearchString = Read-Host "Enter the string to search for: "

$Logs = Get-ChildItem -Path $LogPath -Recurse -Include *.log, *.txt

$Logs | Select-String -Pattern $SearchString | Set-Content $OutFile