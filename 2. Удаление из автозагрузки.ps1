chcp 1251
Write-Host "Удаление Ethernet_settings.bat из автозагрузки "
Remove-Item "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Ethernet_settings.bat"

Write-Host "Удаление архива 111.zip"
Remove-Item 'C:\Users\Administrator\Downloads\111.zip'