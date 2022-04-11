# VPNlogin
Login by using hillstone client. After confirming that vpn has connected, we continuely ssh to the server until it has succeeded.

test.ps1: Using to test IP port statement

vpn.ps1: Using to login a vpn and ssh to the server. Option "need" means needing to login vpn, and other words means ssh without login vpn or having a vpn on already.

usage:'./vpn.ps1 -vpn  -VPNName  -VPNPort  -key  -Username  -Server  -Port ' You can also fix the initial value in 'vpn.ps1'.
