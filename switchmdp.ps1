$ddmpath="C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe"
$setinput="/SetActiveInput"
$monitor="dp2"
echo @($ddmpath,$setinput,$monitor)

& $ddmpath $setinput $monitor
