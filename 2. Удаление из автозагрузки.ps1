chcp 1251
Write-Host "Удаление Ethernet_settings.exe из автозагрузки "
Remove-Item "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Ethernet_settings.exe"
Remove-Item "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\IPadress.txt"

Write-Host "Удаление архива 111.zip"
Remove-Item 'C:\Users\Administrator\Downloads\111.zip'