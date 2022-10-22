# Start all listed programs with one click
#

$coreApps = @(
    'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'
    'C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE'
    'C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE'
    #'C:\Program Files\Mozilla Firefox\firefox.exe'
)

$coreApps | ForEach-Object { Start-Process $_ }

# Start Teams
# Separated it because Teams being a b*tch and was throwing an error in %
Start-Process "C:\Users\$env:username\Appdata\Local\Microsoft\Teams\Update.exe" -ArgumentList '--processStart "Teams.exe"'

