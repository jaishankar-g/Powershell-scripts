
$value=Invoke-WebRequest 'https://api.covid19india.org/v4/min/data.min.json' |ConvertFrom-Json

$hash = @{}
foreach ($property in $value.PSObject.Properties) {
    $hash[$property.Name] = $property.Value
}

foreach ($pro in $hash) 
{
   write-host "state  :  cases "
    foreach($tmp in $pro.keys){
        $property=$hash[$tmp]
        $property= $property.total
        $confirmed=$property.confirmed
        $recovered=$property.recovered
        $deceased=$property.deceased
        $other=$property.other
        #$property.delta7
        $Activecases = $confirmed - ($recovered+$deceased+$other)
        
    Write-Host  "$tmp       $Activecases"
    
   }
}
