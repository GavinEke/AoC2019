$inputfile = Get-Content 'AoC-Day1-Input.txt'
$totalfuel = 0

ForEach ($Item in $inputfile) {
    $totalfuel = $totalfuel + ([math]::floor($Item/3)-2)
}

$totalfuel
