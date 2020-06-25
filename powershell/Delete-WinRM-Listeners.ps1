# Remove all listeners
Remove-Item -Path WSMan:\localhost\Listener\* -Recurse -Force

# Only remove listeners that are run over HTTPS
Get-ChildItem -Path WSMan:\localhost\Listener | Where-Object { $_.Keys -contains "Transport=HTTPS" } | Remove-Item -Recurse -Force
