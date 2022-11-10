function onStepHit()
	if curStep == 32 then
		removeLuaSprite('stagecurtains', true);
	end
	if curStep == 289 then
		setProperty('defaultCamZoom', 1)
	end
	if curStep == 417 then
		setProperty('defaultCamZoom', 1.2)
	end
	if curStep == 545 then
		setProperty('defaultCamZoom', 0.9)
	end
	if curStep == 800 then
		setProperty('defaultCamZoom', 0.8)
	end
	if curStep == 1260 then
		setProperty('defaultCamZoom', 1.1)
	end
	if curStep == 1312 then
		setProperty('boyfriend.angle', 180)
	end
	if curStep == 1449 then
		setProperty('boyfriend.angle', 0)
	end
	if curStep == 1696 then
		setProperty('defaultCamZoom', 0.8)
	end
end

