$serverlist = Get-Content "servers.txt"
"=========================="
foreach ($server in $serverlist)
    {"=========================="+ "`n"+$server; GET-service -Name "multicacheserver0" -computername $server}


