$nr = 1

Dir | %{Rename-Item $_ -NewName (‘{0}.jpg’ -f $nr++)}