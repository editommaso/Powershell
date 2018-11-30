

$servers = Get-Content "D:\powershell\routers.txt"

ForEach ($server in $servers) {

	$Target = "\\" + $server + "\c$\splunk\etc\system\local\deploymentclient.conf"
	Copy-Item -Path 'd:\powershell\deploymentclient.conf' -Destination $Target -Force

}