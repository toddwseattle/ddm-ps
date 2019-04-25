Param
(
    [parameter(Mandatory = $false)]
    [ValidateSet("HDMI", "mDP", "DP2", "MHL", "DP1", "DP")]
    [String[]]
    $InputSource = "HDMI",
    [ValidateRange(1, 63)] 
    [Int]    
    $Monitor = 1
) 
$Host.UI.RawUI.BackgroundColor = 1; 
$Host.UI.RawUI.ForegroundColor = 15;
Clear-Host
if ($InputSource -eq "DP") {
    $InputSource = "DP1"
}
if ($InputSource -eq "mdp") {
    $InputSource = "DP2"
}

if ($Monitor -eq "1") {
    $MonitorActiveInput = "/SetActiveInput"
}
else {
    $MonitorActiveInput = "/$($Monitor):SetActiveInput"
}

$exit = "/exit"
$ddmpath = "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe"
Write-Host "Attempting to switch Display $($Monitor) to InputSource $($InputSource)..."
& $ddmpath $MonitorActiveInput $InputSource $exit

Start-Sleep 5