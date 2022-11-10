function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0.1);
		allowCountdown = true;
		startCountdown();
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		makeLuaSprite('blackscreen', 'blackscreen', 0, 0);
		setObjectCamera('blackscreen', 'hud');
		addLuaSprite('blackscreen', true);
		makeLuaSprite('circle', 'Circle-too-slow', 777, 0);
		setObjectCamera('circle', 'hud');
		addLuaSprite('circle', true);
		makeLuaSprite('text', 'Text-too-slow', -1100, 0);
		setObjectCamera('text', 'hud');
		addLuaSprite('text', true);
		runTimer('appear', 0.6, 1);
		runTimer('fadeout', 1.9, 1);
	elseif tag == 'appear' then
		doTweenX('circletween', 'circle', 0, 0.5, 'linear');
		doTweenX('texttween', 'text', 0, 0.5, 'linear');
	elseif tag == 'fadeout' then
		doTweenAlpha('circlefade', 'circle', 0, 1, 'linear');
		doTweenAlpha('textfade', 'text', 0, 1, 'linear');
		doTweenAlpha('blackfade', 'blackscreen', 0, 1, 'linear');
	end
end

function onStepHit()
	if curStep == 123 then
   		makeAnimatedLuaSprite('Static', 'daSTAT', 0, 0); -- "234" = sprite X pos, "567" = sprite Y pos
    		addAnimationByPrefix('Static', 'idle', 'staticFLASH', 20, true); -- "24" = framerate of animation, "false" = does the animation loop
   		addLuaSprite('Static', true); -- false = add behind characters, true = add over characters
    		setObjectCamera('Static', 'hud'); -- shows up in the camera center as he should
    		playSound('staticBUZZ', 1.2);
		scaleObject('Static', 3.6, 3.6);
        	objectPlayAnimation('Static', 'idle')
	end
	if curStep == 125 then
		removeLuaSprite('Static', false)
	end
	if curStep == 928 then
		setProperty('camHUD.visible', false);
	end
	if curStep == 955 then
		setProperty('camHUD.visible', true);
		makeLuaSprite('lmao', 'simplejump', 0, 0);
		addLuaSprite('lmao', true)
		setObjectCamera('lmao', 'hud');
     		scaleObject('lmao', 0.7, 0.7);
		playSound('sppok', 0.9)
	end
	if curStep == 958 then
		setProperty('camHUD.visible', false);
		removeLuaSprite('lmao', true);
	end
	if curStep == 959 then
		setProperty('camHUD.visible', false);
		removeLuaSprite('lmao', true);
	end
	if curStep == 960 then
		setProperty('camHUD.visible', false);
		removeLuaSprite('lmao', true);
	end
	if curStep == 961 then
		setProperty('camHUD.visible', false);
		removeLuaSprite('lmao', true);
	end
	if curStep == 1056 then
		setProperty('camHUD.visible', true);
	end
	if curStep == 1546 then
   		makeAnimatedLuaSprite('men', 'sonicJUMPSCARE', 100, 0); -- "234" = sprite X pos, "567" = sprite Y pos
    		addAnimationByPrefix('men', 'idle', 'sonicSPOOK', 20, true); -- "24" = framerate of animation, "false" = does the animation loop
   		addLuaSprite('men', true); -- false = add behind characters, true = add over characters
    		setObjectCamera('men', 'hud'); -- shows up in the camera center as he should
    		playSound('datOneSound', 1);
        	objectPlayAnimation('men', 'idle')
	end
	if curStep == 1562 then
		removeLuaSprite('men', true)
	end
end
function onCreate()
    setProperty("skipCountdown", true)
end