# find all accounts with SPN for Kerberoasting
# roboto@graybeardsec.com
Import-Module C:\AD\Tools\ADModule-master\Microsoft.ActiveDirectory.Management.dll
Import-Module C:\AD\Tools\ADModule-master\ActiveDirectory\ActiveDirectory.psd1 

Get-ADUser -Filter {servicePrincipalName -ne "$null"} -Properties servicePrincipalName | select samaccountname,servicePrincipalName
