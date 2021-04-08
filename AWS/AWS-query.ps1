$file="filepath"
Get-content $file 
$Array = @()

foreach($tmp in $file){
$Array += [PSCustomObject]@{"instance" = $tmp.Instance; "Instance type"= $tmp.InstanceType;"Os" =$tmp.Os}
}
$Array| Group-Object -noelement
