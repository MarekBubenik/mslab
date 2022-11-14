<# 
    Windows Server setup
    Part 0
 

#>

# Prepare the image for template - sysprep, generic image, shutdown, out of box experience fresh install
# %WINDIR%\system32\sysprep\sysprep.exe /generalize /shutdown /oobe

Set-ExecutionPolicy RemoteSigned

#region - Network configuration
New-NetIPAddress -InterfaceAlias "Ethernet0" -IPAddress "192.168.80.2" -PrefixLength 24 -DefaultGateway "192.168.80.1"
Set-DnsClientServerAddress -InterfaceAlias "Ethernet0" -ServerAddresses "192.168.80.2", "8.8.8.8", "1.1.1.1"

#endregion

#region - Time zone configuration
Set-TimeZone -Id "Central Europe Standard Time"

#endregion

#region - Firewall rules configuration

#File and Printer Sharing configuration
Set-NetFirewallRule -DisplayName "File and Printer Sharing (Echo Request - ICMPv4-In)" -Enabled True
Set-NetFirewallRule -DisplayName "File and Printer Sharing (Echo Request - ICMPv6-In)" -Enabled True

#Network Discovery configuration
Get-NetFirewallRule -DisplayGroup 'Network Discovery' | Set-NetFirewallRule -Profile 'Domain, Private, Public' -Enabled True 

#endregion

#region - Rename computer and restart
Rename-Computer -NewName "AD001" -Restart

#endregion



