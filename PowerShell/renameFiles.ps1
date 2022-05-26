Write-Host "---------------------------------------------------"
$Read = Read-Host "Zadejte filter, dle ktereho mam vyhledat soubory..."
$Newname = Read-Host "Zadejte novy nazev pro vsechny zmenene soubory... (e.g. myFile, myFile1, myFile2 etc.)"
Get-ChildItem $Read -Recurse | ForEach-Object -Begin {$count=1} -Process {Rename-Item $_ -NewName "$Newname$count.txt"; $count++}
Write-Host "---------------------------------------------------"
Write-Host "Soubory uspesne prejmenovany!"
Write-Host "---------------------------------------------------"