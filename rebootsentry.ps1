$serverlist = Get-Content "sentry.txt"
. .\functions.ps1
foreach ($server in $serverlist)
    {Invoke-Command -ComputerName ($server){shutdown /r /t 0 /m \\ ($server);"`n" + "=========================="}
}