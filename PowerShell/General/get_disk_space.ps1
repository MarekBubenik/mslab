Get-CimInstance Win32_LogicalDisk | 
Select-Object DeviceID, ProviderName, @{n="TotalSpace";e={$_.Size / 1gb -as [int]}}, @{n="FreeSpace";e={$_.FreeSpace / 1gb -as [int]}}