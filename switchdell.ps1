Param
          (
            [parameter(Mandatory=$false)]
            [ValidateSet("HDMI", "mDP", "MHL","DP")]
            [String[]]
            $Monitor="HDMI"
          ) 
$ddmpath="C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe"
$setinput="/SetActiveInput"
Write-Host "Attempting to switch to monitor" $Monitor
& $ddmpath $setinput $Monitor
