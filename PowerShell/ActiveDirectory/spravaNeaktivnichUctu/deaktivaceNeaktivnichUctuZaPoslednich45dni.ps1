# What: PowerShell "script" to disable inactive accounts 
# Who: Marek Bubeník
# When: 2022/05/31
# How: & .\deaktivaceNeaktivnichUctuZaPoslednich45dni

Search-ADAccount -AccountInactive -TimeSpan 45.0:0:0.0 | Where-Object Enabled -eq True | Disable-ADAccount
