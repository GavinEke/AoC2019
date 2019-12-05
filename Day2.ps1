<# Part 1
$puzzleinput = 1,9,10,3,2,3,11,0,99,30,40,50 # Replace with your puzzle input
$puzzleinput[1] = 12
$puzzleinput[2] = 2

$i = 0

ForEach ($Item in $puzzleinput) {
    if (0 -eq $i % 4) {
        if ($Item -eq 1) {
            $puzzleinput[$puzzleinput[$i+3]] = $puzzleinput[$puzzleinput[$i+1]] + $puzzleinput[$puzzleinput[$i+2]]
        }
        elseif ($Item -eq 2) {
            $puzzleinput[$puzzleinput[$i+3]] = $puzzleinput[$puzzleinput[$i+1]] * $puzzleinput[$puzzleinput[$i+2]]
        }
        else {
            break
        }
    }
    $i++
}

$puzzleinput[0]
#>

# Part 2
$outputzero = 19690720

for ($noun = 0; $noun -le 99; $noun++) {
    for ($verb = 0; $verb -le 99; $verb++) {
        $x = 1,9,10,3,2,3,11,0,99,30,40,50 #Replace with your puzzle input
        $x[1] = $noun
        $x[2] = $verb
        $i = 0

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

        if ($x[0] -eq $outputzero) {
            break 2
        }
    }
}

$puzzleoutput = 100 * $noun + $verb
$puzzleoutput
