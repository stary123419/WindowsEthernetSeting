$ip = (Get-Content -Path .\C:\Users\Administrator\Downloads\111\WindowsEthernetSeting-main\IPadress.txt)[0]
$gateway = (Get-Content -Path .\C:\Users\Administrator\Downloads\111\WindowsEthernetSeting-main\IPadress.txt)[1]
$mask = (Get-Content -Path .\C:\Users\Administrator\Downloads\111\WindowsEthernetSeting-main\IPadress.txt)[2]
$dns = (Get-Content -Path .\C:\Users\Administrator\Downloads\111\WindowsEthernetSeting-main\IPadress.txt)[3]
$dns2 = (Get-Content -Path .\C:\Users\Administrator\Downloads\111\WindowsEthernetSeting-main\IPadress.txt)[4]
netsh interface ip set address name="Ethernet" source=static $ip $mask gateway=$gateway
netsh interface ip set dns name="Ethernet" static $dns
netsh interface ip add dns name="Ethernet" address=$dns2 index=2  
Start-Sleep -Seconds 15
if ( -not (Test-Connection microsoft.com -Quiet ))
{
    netsh interface ip set address "Ethernet" dhcp
    netsh interface ip set dns name="Ethernet" dhcp
    netsh interface ip set address name="Ethernet 2" source=static $ip $mask gateway=$gateway
    netsh interface ip set dns name="Ethernet 2" static $dns
    netsh interface ip add dns name="Ethernet 2" address=$dns2 index=2    
}
