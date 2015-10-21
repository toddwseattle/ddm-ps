$ddmpath="C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe"
$setinput="/SetActiveInput"
$monitor="HDMI"
echo @($ddmpath,$setinput,$monitor)

& $ddmpath $setinput $monitor
