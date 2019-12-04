# Part 1
$UniquePWCount = 0

ForEach ($Item in 156218..652527) { # Change the numbers to your own input
    $CharArray = ([string]$Item).ToCharArray()
    $i = 0
    $testcount = 0

    while ($i -lt 6) {
        if ($CharArray[$i] -le $CharArray[($i+1)]) {
            $testcount++
        }
        $i++
    }

    if ($testcount -eq 5) {
        $i = 0
        while ($i -lt 6) {
            if ($CharArray[$i] -eq $CharArray[($i+1)]) {
                if ($lastsuccess -ne [int](-join $CharArray)) {
                    $UniquePWCount++
                    $lastsuccess = [int](-join $CharArray)
                }
            }
            $i++
        }
    }
}

$UniquePWCount
