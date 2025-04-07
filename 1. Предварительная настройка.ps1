Copy-Item "C:\Users\Administrator\Downloads\111\WindowsEthernetSeting-main\Ethernet setings.bat" -Destination "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device' -Name DevicePasswordLessBuildVersion -Value 0
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -Value 0
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" `
                 -Name "UserAuthentication" `
                 -Value 0 `
                 -PropertyType DWORD `
                 -Force
gpupdate /force            