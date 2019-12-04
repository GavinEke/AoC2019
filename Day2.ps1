# Part 1
$i = 0
$x = 1,9,10,3,2,3,11,0,99,30,40,50 #Replace with your puzzle input
$x[1] = 12
$x[2] = 2

ForEach ($Item in $x) {
    if (0 -eq $i % 4) {
        if ($Item -eq 1) {
            $x[$x[$i+3]] = $x[$x[$i+1]] + $x[$x[$i+2]]
        }
        elseif ($Item -eq 2) {
            $x[$x[$i+3]] = $x[$x[$i+1]] * $x[$x[$i+2]]
        }
        elseif ($Item -eq 99) {
            break
        }
        else {
            Write-Host "Error"
        }
    }
    $i++
}

$x[0]
