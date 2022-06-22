# What: PowerShell script to automate password resets with secure passwords
# Who: Marek Bubeník
# When: 2022/06/22
# How: & .\resetovaniHesla.ps1 jmeno_prijmeni

# Grab the argument and set it as the variable $username
$username=$args[0]

# Secure password generator
Function New-SecurePassword {
    $Password = "!?@#$%^&*0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz".tochararray()
    ($Password | Get-Random -Count 8) -Join ''
}

# Resets the password for the account
Function New-PasswordForAccount {
    Set-ADAccountPassword -Identity $username -Reset -NewPassword (ConvertTo-SecureString -AsPlainText $newPassword -Force)
}

# Checks if the passing argument has been set
if ( [bool]$username )
{
    $newPassword = ( New-SecurePassword )
    New-PasswordForAccount
    
    Write-Output "+----------------------------------------------------------------------------------+"
    Write-Output "+   Heslo bylo uspesne resetovano, nove heslo pro ucet $username je $newPassword   +"
    Write-Output "+----------------------------------------------------------------------------------+"
}
else 
{
    Write-Output "+----------------------------------------------------------------------------------+"
    Write-Output "+                                  ERROR: Wrong input!                             +"
    Write-Output "+                             Spravny syntax pro pouziti:                          +"
    Write-Output "+                        & resetovaniHesla.ps1 jmeno_prijmeni                      +"
    Write-Output "+----------------------------------------------------------------------------------+"
}