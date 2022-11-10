function onStepHit()
	if curStep == 1 then
		setProperty('camHUD.visible', false);
	end
	if curStep == 126 then
		setProperty('camHUD.visible', true);
		setProperty('defaultCamZoom', 0.8);
	end
end
function onCreate()
    setProperty("skipCountdown", true)
end