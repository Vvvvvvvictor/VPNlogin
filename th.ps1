Param([string]$vpn = "need")
. ./test.ps1
if($vpn -like "need"){
	."C:\Program Files (x86)\Hillstone\Hillstone Secure Connect\bin\SecureConnect.exe"
	$tag = $False
	"Connecting......"
	while($tag -ne $True){
		$tag = Test-Port -ComputerName vpn1.nscc-gz.cn -port 4433
		# $tag
	}
	"Succeeded!"
}
$tag = $False
while(!$tag){
	ssh -i .\sysu_comphys_1 -p 5566 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null sysu_comphys_1@172.16.22.11
	$tag = Test-Port -ComputerName 172.16.22.11 -port 5566
	# $tag
	if(!$tag){
		"Retring......"
	}
}
"Finished!"