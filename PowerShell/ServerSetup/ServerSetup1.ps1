<# 
    Windows Server setup
    Part 1
 

#>

#region - Install Active Directory Domain Services
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

# Install new forest
Install-ADDSForest -DomainName mblabcloudtwo.onmicrosoft.com -InstallDns

Import-Module ADDSDeployment
#endregion