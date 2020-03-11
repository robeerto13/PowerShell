# find DA with SPN for Kerberoasting
Import-Module C:\AD\Tools\ADModule-master\Microsoft.ActiveDirectory.Management.dll
Import-Module C:\AD\Tools\ADModule-master\ActiveDirectory\ActiveDirectory.psd1
$name = @()

$name = Get-ADGroupMember "domain admins" -Recursive | foreach {$_.samaccountname}
foreach($n in $name){
    $spn = get-aduser $n -Properties servicePrincipalName | ?{$_.servicePrincipalName -ne $null} | select samaccountname,servicePrincipalName
    $spn
    } 
