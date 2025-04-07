$ip = (Get-Content -Path .\IPadress.txt)[0]
$gateway = (Get-Content -Path .\IPadress.txt)[1]
netsh interface ip set address name="Ethernet" source=static $ip 255.255.255.0 gateway=$gateway
netsh interface ip set dns name="Ethernet" static 8.8.8.8
netsh interface ip add dns name="Ethernet" address="8.8.4.4" index=2  
Start-Sleep -Seconds 15
if ( -not (Test-Connection microsoft.com -Quiet ))
{
    netsh interface ip set address "Ethernet" dhcp
    netsh interface ip set dns name="Ethernet" dhcp
    netsh interface ip set address name="Ethernet 2" source=static $ip 255.255.255.0 gateway=$gateway
    netsh interface ip set dns name="Ethernet 2" static 8.8.8.8
    netsh interface ip add dns name="Ethernet 2" address="8.8.4.4" index=2    
}
