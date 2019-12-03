<# Part 1
#$inputfile = 100756
$inputfile = Get-Content 'AoC-Day1-Input.txt'
$totalfuel = 0

ForEach ($Item in $inputfile) {
    $totalfuel = $totalfuel + ([math]::floor($Item/3)-2)
}

$totalfuel
#>

# Part 2
#$inputfile = 100756
$inputfile = Get-Content 'AoC-Day1-Input.txt'
$totalfuel = 0

ForEach ($Item in $inputfile) {
    $modulefuel = ([math]::floor($Item/3)-2)
    $moduletotal = $modulefuel

    do {
        $modulefuel = ([math]::floor($modulefuel/3)-2)
        $moduletotal = $moduletotal + $modulefuel
    } until ($modulefuel -le 5)

    $totalfuel = $totalfuel + $moduletotal
}

$totalfuel
