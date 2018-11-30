$serverlist = Get-Content "routers.txt"
"=========================="
foreach ($server in $serverlist)
    {"=========================="+ "`n"+$server; GET-service -Name "multicacherouter0" -computername $server}
