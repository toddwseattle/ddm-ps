Param
          (
            [parameter(Mandatory=$false)]
            [ValidateSet("HDMI", "mDP","DP2","MHL","DP1","DP")]
            [String[]]
            $Monitor="HDMI"
          ) 
if($Monitor -eq "DP")
{
	$Monitor="DP1"
}
if($Monitor -eq "mdp")
{
	$Monitor="DP2"
}
$ddmpath="C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe"
$setinput="/SetActiveInput"
Write-Host "Attempting to switch to monitor" $Monitor
& $ddmpath $setinput $Monitor
