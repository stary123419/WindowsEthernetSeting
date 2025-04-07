Write-Host "Disabling user authentication requirement for RDP..."
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" `
                 -Name "UserAuthentication" `
                 -Value 0 `
                 -PropertyType DWORD `
                 -Force

Write-Host "Configuring DNS for active network interfaces..."
$dns1 = "8.8.8.8"
$dns2 = "8.8.4.4"

# Get all connected network adapters
$connectedAdapters = Get-NetAdapter | Where-Object { $_.Status -eq "Up" }

foreach ($adapter in $connectedAdapters) {
    Write-Host "Setting DNS for interface: $($adapter.Name)"
    Set-DnsClientServerAddress -InterfaceIndex $adapter.InterfaceIndex -ServerAddresses ($dns1, $dns2)
}

Write-Host "Disabling account lockout threshold..."
net accounts /lockoutthreshold:0

Write-Host "Turning off Windows Firewall..."
NetSh Advfirewall set allprofiles state off

Write-Host "Flushing DNS cache..."
ipconfig /flushdns

Write-Host "Applying Group Policy updates..."
gpupdate /force

Write-Host "Setup completed successfully!"
