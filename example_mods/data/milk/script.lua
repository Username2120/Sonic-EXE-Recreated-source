-- im gonna sunk
function onStepHit()
	if curStep == 3 then
   		makeAnimatedLuaSprite('men', 'sunky/sunker', 340, 50);
    		addAnimationByPrefix('men', 'idle', 'sunker', 24, true);
    		setObjectCamera('men', 'hud');
        	objectPlayAnimation('men', 'idle')
    		doTweenAlpha('men', 'men', 0, 0.001, 'linear')
		makeLuaSprite('lmao', 'sunky/cereal', -610, 0);
		addLuaSprite('lmao', true)
		setObjectCamera('lmao', 'hud');
     		-- scaleObject('lmao', 0.7, 0.7);
	end
	if curStep == 5 then
   		addLuaSprite('men', true);
		scaleObject('men', 3.7, 3.7);
	end
	if curStep == 131 then
    		doTweenAlpha('men', 'men', 1, 1, 'linear')
		function opponentNoteHit(id, direction, noteType, isSustainNote)  
			cameraShake('game', 0.5, 0.1)
		end
	end
	if curStep == 144 then
		removeLuaSprite('men', true)
		function opponentNoteHit(id, direction, noteType, isSustainNote)  
			cameraShake('game', 0, 0.1)
		end
	end
end
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
		makeLuaSprite('circle', 'Sunky', 0, -1000);
		setObjectCamera('circle', 'hud');
		addLuaSprite('circle', true);
		runTimer('appear', 0.6, 1);
		runTimer('fadeout', 1.9, 1);
	elseif tag == 'appear' then
		doTweenY('circletween', 'circle', 0, 0.1, 'linear');
		playSound('flatBONK', 0.7);
	elseif tag == 'fadeout' then
		doTweenAlpha('circlefade', 'circle', 0, 1, 'linear');
		doTweenAlpha('blackfade', 'blackscreen', 0, 1, 'linear');
	end
end
function onCreate()
   	setProperty("skipCountdown", true)
end