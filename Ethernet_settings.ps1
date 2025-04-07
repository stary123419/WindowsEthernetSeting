    netsh interface ip set address name="Ethernet" source=static 80.64.30.13 255.255.255.0 gateway=80.64.30.1
    netsh interface ip set dns name="Ethernet" static 8.8.8.8
    netsh interface ip add dns name="Ethernet" address="8.8.4.4" index=2  
    Start-Sleep -Seconds 15
if ( -not (Test-Connection microsoft.com -Quiet ))
{
    netsh interface ip set address "Ethernet" dhcp
    netsh interface ip set address name="Ethernet 2" source=static 80.64.30.13 255.255.255.0 gateway=80.64.30.1
    netsh interface ip set dns name="Ethernet 2" dhcp
    
}
