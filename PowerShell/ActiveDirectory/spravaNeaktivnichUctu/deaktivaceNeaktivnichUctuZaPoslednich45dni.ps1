Search-ADAccount -AccountInactive -TimeSpan 45.0:0:0.0 | Where-Object Enabled -eq True | Disable-ADAccount
