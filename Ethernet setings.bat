netsh interface ip set address "Ethernet" static 80.64.30.13 255.255.255.0 80.64.30.1
netsh interface ip dns "Ethernet" static 8.8.8.8 primary
netsh interface ip dns "Ethernet" static 8.4.4.8 index=2