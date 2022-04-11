Param([string]$vpn = "need", [string]$VPNName, $VPNPort, [string]$key, $UserName, $Server, $Port)
. ./test.ps1
if($vpn -like "need"){
	."C:\Program Files (x86)\Hillstone\Hillstone Secure Connect\bin\SecureConnect.exe" # This path needs to change according to yours.
	$tag = $False
	"Connecting......"
	while($tag -ne $True){
		$tag = Test-Port -ComputerName $VPNName -port $VPNPort
		# $tag
	}
	"Succeeded!"
}
$tag = $False
$name = $UserName+"@"+$Server
while(!$tag){
	ssh -i $key -p $Port -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $name
	$tag = Test-Port -ComputerName $Server -port $Port
	# $tag
	if(!$tag){
		"Retring......"
	}
}
"Finished!"

# ./vpn.ps1 -vpn  -VPNName  -VPNPort  -key  -Username  -Server  -Port 