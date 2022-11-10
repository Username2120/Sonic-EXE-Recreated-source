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
		makeLuaSprite('circle', 'CircleCycles', 777, 0);
		setObjectCamera('circle', 'hud');
		addLuaSprite('circle', true);
		makeLuaSprite('text', 'TextFate', -1100, 0);
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
	if curStep == 1984 then
		doTweenAlpha('bf-flippedAlpha', 'boyfriend', 0, 3, 'linear')
		doTweenAlpha('Beast-flippedAlpha', 'dad', 0, 3, 'linear')
	end
	if curStep == 2032 then
		doTweenAlpha('bf-flippedAlpha', 'boyfriend', 1, 2, 'linear')
	end
	if curStep == 2320 then
		playSound('SUPERBF', 0.9)
		doTweenAlpha('Beast-flippedAlpha', 'dad', 1, 0.0001, 'linear')
	end
end