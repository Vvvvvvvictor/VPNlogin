# VPNlogin
Login by using hillstone client. After confirming that vpn has connected, we continuely ssh to the server until it has succeeded.

test.ps1: Using to test IP port statement

vpn.ps1: Using to login a vpn and ssh to the server. Option "need" means needing to login vpn, and other words means ssh without login vpn or having a vpn on already.

usage:'./vpn.ps1 -vpn  -VPNName  -VPNPort  -key  -Username  -Server  -Port ' You can also fix the initial value in 'vpn.ps1'.

vpn: wheter you need to login vpn. If you need, you can input nothing or "need". Otherwise you need to input words except "need".

VPNName: the VPN address

YPNPort: the VPN port

key: the key to login the server

UserName: username of the server

Server: the address of server that you want to login

Port: the server's port
