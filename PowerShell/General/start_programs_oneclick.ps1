# Start all listed programs with one click
#
#

$apps = @(
    'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'
    "C:\Users\$env:username\Appdata\Local\Microsoft\Teams\Update.exe" -ArgumentList '--processStart "Teams.exe"'
    'C:\Progra, Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE'
    'C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE'
    #'C:\Program Files\Mozilla Firefox\firefox.exe'
)

$apps | ForEach-Object { Start-Process $_ -nowait }