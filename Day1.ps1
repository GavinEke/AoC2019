<# Part 1
$puzzleinput = Get-Content 'AoC-Day1-Input.txt'

ForEach ($Item in $puzzleinput) {
    $totalfuel = $totalfuel + ([math]::floor($Item/3)-2)
}

$totalfuel
#>

# Part 2
$puzzleinput = Get-Content 'AoC-Day1-Input.txt'

ForEach ($Item in $puzzleinput) {
    $modulefuel = ([math]::floor($Item/3)-2)
    $moduletotal = $modulefuel

    do {
        $modulefuel = ([math]::floor($modulefuel/3)-2)
        $moduletotal = $moduletotal + $modulefuel
    } until ($modulefuel -le 5)

    $totalfuel = $totalfuel + $moduletotal
}

$totalfuel
