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
		makeLuaSprite('circle', 'Circle-fight-or-flight', 777, 0);
		setObjectCamera('circle', 'hud');
		addLuaSprite('circle', true);
		makeLuaSprite('text', 'Text-fight-or-flight', -1100, 0);
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
function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 0.8)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.6)
    end
end
function onBeatHit()
    if curBeat == 1 then
         setProperty('healthBar.angle', 90)
	 doTweenX('healthBarTweenX', 'healthBar', 900, 0.01, 'linear')
	 doTweenY('healthBarTweenY', 'healthBar', 350, 0.01, 'linear')
         setProperty('iconP1.x', 1122)
	 doTweenY('iconP1TweenY', 'iconP1', 340, 0.01, 'linear')
         setProperty('iconP2.x', 1122)
	 doTweenY('iconP2TweenY', 'iconP2', 240, 0.01, 'linear')
	 doTweenY('timeBarTweenY', 'timeBar', -900, 0.01, 'linear')
	 if downscroll then
	 	doTweenY('timeTxtTweenY', 'timeTxt', 60, 0.01, 'linear')
	 else
		doTweenY('timeTxtTweenY', 'timeTxt', 630, 0.01, 'linear')
	end
    end
end
function onStepHit()
	if curStep == 1184 then
		doTweenAlpha('stagefrontAlpha', 'stagefront', 0, 0.5, 'linear')
		doTweenAlpha('stagecurtainsAlpha', 'stagecurtains', 0, 0.5, 'linear')
		doTweenAlpha('stagelight_rightAlpha', 'stagelight_right', 0, 0.5, 'linear')
		doTweenAlpha('stagelight_righterAlpha', 'stagelight_righter', 0, 0.5, 'linear')
     		makeLuaSprite('image', 'RedVG', 0, 0);
     		addLuaSprite('image', true);
      		doTweenColor('hello', 'image', 'FFFFFFFF', 0.1, 'quartIn');
      		setObjectCamera('image', 'hud');
	function opponentNoteHit()
    		health = getProperty('health')
    		if getProperty('health') > 0.05 then
        	setProperty('health', health- 0.04);
    		end
	    end
	end
	if curStep == 2015 then
		doTweenAlpha('stagefrontAlpha', 'stagefront', 1, 2, 'linear')
		doTweenAlpha('stagecurtainsAlpha', 'stagecurtains', 1, 2, 'linear')
		doTweenAlpha('stagelight_rightAlpha', 'stagelight_right', 1, 2, 'linear')
		doTweenAlpha('stagelight_righterAlpha', 'stagelight_righter', 1, 2, 'linear')
		doTweenAlpha('imageAlpha', 'image', 0, 2, 'linear')
	function opponentNoteHit()
    		health = getProperty('health')
    		if getProperty('health') > 0.05 then
        	setProperty('health', health- 0);
    		end
	    end
	end
end
function onCreate()
    setProperty("skipCountdown", true)
end