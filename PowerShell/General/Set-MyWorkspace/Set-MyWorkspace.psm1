<# 
    .SYNOPSIS
    Start all listed programs with one click
#>
function Set-MyWorkspace {
    $coreApps = @(
        #'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'
        'C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE'
        'C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE'
        #'C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE'
        'C:\Program Files\Mozilla Firefox\firefox.exe'
        'C:\Windows\System32\virtmgmt.msc'
    )

    $coreApps | ForEach-Object { Start-Process $_ }

    # Start Teams
    # Separated it because Teams is being a b*tch and was throwing an error in %
    #Start-Process "C:\Users\$env:username\Appdata\Local\Microsoft\Teams\Update.exe" -ArgumentList '--processStart "Teams.exe"'
}