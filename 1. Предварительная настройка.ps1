chcp 1251
Write-Host "Копирование файлф Ethernet_settings в автозагрузку"
Copy-Item "C:\Users\Administrator\Downloads\111\WindowsEthernetSeting-main\Ethernet_settings.exe" -Destination "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

Write-Host "Включение RDP"
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -Value 0

Write-Host "Disabling user authentication requirement for RDP..."
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" `
                 -Name "UserAuthentication" `
                 -Value 0 `
                 -PropertyType DWORD `
                 -Force

Write-Host "Выключение account lockout threshold..."
net accounts /lockoutthreshold:0

Write-Host "Выключение Windows Firewall..."
NetSh Advfirewall set allprofiles state off

Write-Host "Очистка DNS cache..."
ipconfig /flushdns

Write-Host "Обновление групповых политик Windows"
gpupdate /force

   