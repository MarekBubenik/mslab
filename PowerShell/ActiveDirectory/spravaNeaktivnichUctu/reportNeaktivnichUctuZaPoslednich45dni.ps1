# What: PowerShell script to report inactive accounts and output them into a file
# Who: Marek Bubeník
# When: 2022/05/31
# How: & .\reportNeaktivnichUctuZaPoslednich45dni

Import-Module ActiveDirectory;
Search-ADAccount -AccountInactive -TimeSpan 45.0:0:0.0 | Where-Object Enabled -eq True |
Select-Object @{l='Jmeno a prijmeni';e={$_.Name}},@{l='Neaktivni ucty za poslednich 45 dni';e={$_.UserPrincipalName}},@{l='Posledni datum prihlaseni';e={$_.LastLogonDate}} | 
Format-Table -AutoSize | 
Out-File neaktivniUctyZaPoslednich45dni.txt
