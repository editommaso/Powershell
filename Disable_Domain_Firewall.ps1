$serverlist = Get-Content "servers.txt"
"=========================="
foreach ($server in $serverlist)
{Invoke-Command -ComputerName $server -ScriptBlock { Set-NetFirewallProfile -Profile Domain -Enabled False }}
