# Part 1
# Replace with your puzzle input
$puzzleinput = 1,9,10,3,2,3,11,0,99,30,40,50 
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
