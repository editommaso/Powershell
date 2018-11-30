$serverlist = Get-Content "servers.txt"
"=========================="
foreach ($server in $serverlist)
    {"=========================="+ "`n"+$server; Restart-Computer -computername $server}
