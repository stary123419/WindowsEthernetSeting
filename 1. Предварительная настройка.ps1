del /f /s /q 'C:\Users\Administrator\Downloads\111.zip'
Copy-Item -Path "C:\Users\Administrator\Downloads\WindowsEthernetSeting-main\111\Ethernet setings.bat" -Destination "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device' -Name DevicePasswordLessBuildVersion -Value 2
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -Value 0
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" `
                 -Name "UserAuthentication" `
                 -Value 0 `
                 -PropertyType DWORD `
                 -Force
gpupdate /force            