# Vyhledat účty, které byly neaktivní za posledních ?? dní pomocí proměnné lastLogonTimestamp v ADDS | LastLogonDate v PowerShellu
# Nikdy rovnou nemazat účty, nejdříve deaktivovat (třeba na 60 dní)
# Přidat poznámku, proč je účet deaktivován
# Dávat si pozor na to, zda uživatel používá Office 365 účet a on-premise AD účet (AD Sync)
#

$Dny = Read-Host "Vyhledat ucty, ktere jsou neaktivni ____ dni a deaktivovat je."
$NeaktivniDny = ((Get-Date).AddDays(-$Dny)).Date
Get-ADUser -Filter {LastLogonDate -lt $NeaktivniDny} -Properties * | Select-Object samaccountname,givenname,surname,LastLogonDate | Disable-ADAccount

# Možnost exportu uctu, které budou deaktivovány do csv
#
# $NeaktivniDny = ((Get-Date).AddDays(-60)).Date
# Get-ADUser -Filter {LastLogonDate -lt $NeaktivniDny} -Properties * | Select-Object samaccountname,givenname,surname,LastLogonDate | Export-Csv neaktivniUcty.csv

