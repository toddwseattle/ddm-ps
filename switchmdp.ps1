$ddmpath="C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe"
$setinput="/SetActiveInput"
$mdp="dp2"
echo @($ddmpath,$setinput,$mdp)

& $ddmpath $setinput $mdp
