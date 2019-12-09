# Part 1
$puzzleinput = '123456789012' #Replace with your puzzle input
$pixelswide  = 25
$pixelstall  = 6
$i           = 0

$puzzlearray = $puzzleinput -split "(\d{$($pixelswide * $pixelstall)})"

$ZeroCountObject = ForEach ($Item in $puzzlearray) {
    if (-not ([string]::IsNullOrEmpty($Item))) {
        $ZeroCount = $Item.ToCharArray() | Group-Object | Where-Object {$_.Name -eq 0} | Select-Object -ExpandProperty Count
        [PSCustomObject]@{
            Iteration = $i
            ZeroCount = $ZeroCount
        }
    }
    $i++
}

$LowestZeroCount = $ZeroCountObject | Sort-Object -Property ZeroCount | Select-Object -First 1 -ExpandProperty Iteration
$finallayer      = $puzzlearray[$LowestZeroCount]
$puzzleoutput    = ($finallayer.ToCharArray() | Group-Object | Where-Object {$_.Name -eq 1} | Select-Object -ExpandProperty Count) * ($finallayer.ToCharArray() | Group-Object | Where-Object {$_.Name -eq 2} | Select-Object -ExpandProperty Count)

$puzzleoutput
