Import-Module C:\AD\Tools\ADModule-master\Microsoft.ActiveDirectory.Management.dll
Import-Module C:\AD\Tools\ADModule-master\ActiveDirectory\ActiveDirectory.psd1
$name = @()

$name = Get-ADGroupMember "domain admins" | foreach {$_.samaccountname}
foreach($n in $name){
    get-aduser $n -Properties servicePrincipalName | select samaccountname,servicePrincipalName
    }