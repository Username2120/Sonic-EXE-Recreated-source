function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('soundtestcodes');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onCreate()
    setProperty("skipCountdown", true)
end
function onBeatHit()
    if curBeat == 323 then
	 addLuaSprite('stagebacktwo', false);
	 addLuaSprite('stageback', false);
	 addLuaSprite('stagefront', false);
	 addLuaSprite('stagelight_left', false);
	 addLuaSprite('stagelight_right', false);
	 addLuaSprite('stagecurtains', false);
	 removeLuaSprite('frontback', false);
	 removeLuaSprite('frontbacktrees', false);
	 removeLuaSprite('frontgrass', false);
	 removeLuaSprite('fronttree1', false);
	 removeLuaSprite('fronttree2', false);
	 doTweenX('bf-flippedTweenX', 'boyfriend', 500, 0.01, 'linear')
	 doTweenX('Knux-flippedTweenX', 'dad', 1250, 0.01, 'linear')
    end
    if curBeat == 579 then
	 removeLuaSprite('stagebacktwo', false);
	 removeLuaSprite('stageback', false);
	 removeLuaSprite('stagefront', false);
	 removeLuaSprite('stagelight_left', false);
	 removeLuaSprite('stagelight_right', false);
	 removeLuaSprite('stagecurtains', false);
	 addLuaSprite('flip', false);
    function onMoveCamera(focus)
    	if focus == 'dad' then
        	setProperty('defaultCamZoom', 0.7)
    	elseif focus == 'boyfriend' then
       		setProperty('defaultCamZoom', 0.7)
      end
    end
  end
end
function onStepHit()
	if curStep == 143 then
		makeLuaSprite('tailman', 'Tails', 0, 0)
		addLuaSprite('tailman', false)
		setObjectCamera('tailman', 'hud')
		playSound('P3Jumps/TailsScreamLOL', 0.3)
	end
	if curStep == 148 then
		removeLuaSprite('tailman', true)
	end
	if curStep == 1039 then
		removeLuaSprite('stagebacktwo', false);
		removeLuaSprite('stageback', false);
		removeLuaSprite('stagefront', false);
		removeLuaSprite('stagelight_left', false);
		removeLuaSprite('stagelight_right', false);
		removeLuaSprite('stagecurtains', false);
		addLuaSprite('frontback', false);
		addLuaSprite('frontbacktrees', false);
		addLuaSprite('frontgrass', false);
		addLuaSprite('fronttree1', false);
		addLuaSprite('fronttree2', false);
		doTweenX('bfpovTweenX', 'boyfriend', 750, 0.01, 'linear')
		doTweenX('BeastTweenX', 'dad', 50, 0.01, 'linear')
	 	doTweenY('bfpovTweenY', 'boyfriend', 1000, 0.01, 'linear')
		doTweenY('BeastTweenY', 'dad', 470, 0.01, 'linear')
	function onMoveCamera(focus)
    		if focus == 'dad' then
        		setProperty('defaultCamZoom', 0.7)
    		elseif focus == 'boyfriend' then
       			setProperty('defaultCamZoom', 0.7)
    		end
	    end
	end
	if curStep == 1296 then
		doTweenY('bf-flippedTweenY', 'boyfriend', 710, 0.01, 'linear')
		makeLuaSprite('knucman', 'Knuckles', 0, 0)
		addLuaSprite('knucman', false)
		setObjectCamera('knucman', 'hud')
		playSound('P3Jumps/KnucklesScreamLOL', 0.3)
	function onMoveCamera(focus)
    		if focus == 'dad' then
        		setProperty('defaultCamZoom', 0.6)
    		elseif focus == 'boyfriend' then
       			setProperty('defaultCamZoom', 0.6)
    		end
	    end
	end
	if curStep == 1301 then
		removeLuaSprite('knucman', true)
	end
	if curStep == 2316 then
		doTweenX('bfpovTweenX', 'boyfriend', 50, 0.01, 'linear')
		doTweenX('BeastTweenX', 'dad', 1150, 0.01, 'linear')
		doTweenY('bfpovTweenY', 'boyfriend', 1000, 0.01, 'linear')
		doTweenY('BeastTweenY', 'dad', 470, 0.01, 'linear')
	end
	if curStep == 2832 then
		addLuaSprite('stagebacktwo', false);
		addLuaSprite('stageback', false);
		addLuaSprite('stagefront', false);
		addLuaSprite('stagelight_left', false);
		addLuaSprite('stagelight_right', false);
		addLuaSprite('stagecurtains', false);
		removeLuaSprite('flip', false);
	function onMoveCamera(focus)
    		if focus == 'dad' then
        		setProperty('defaultCamZoom', 0.6)
    		elseif focus == 'boyfriend' then
       			setProperty('defaultCamZoom', 0.6)
    		end
	    end
	end
	if curStep == 2960 then
		makeLuaSprite('egman', 'Eggman', 0, 0)
		addLuaSprite('egman', false)
		setObjectCamera('egman', 'hud')
		playSound('P3Jumps/EggmanScreamLOL', 0.3)
	end
	if curStep == 2965 then
		removeLuaSprite('egman', true)
	end
	if curStep == 4110 then
		removeLuaSprite('stagebacktwo', false);
		removeLuaSprite('stageback', false);
		removeLuaSprite('stagefront', false);
		removeLuaSprite('stagelight_left', false);
		removeLuaSprite('stagelight_right', false);
		removeLuaSprite('stagecurtains', false);
		addLuaSprite('frontback', false);
		addLuaSprite('frontbacktrees', false);
		addLuaSprite('frontgrass', false);
		addLuaSprite('fronttree1', false);
		addLuaSprite('fronttree2', false);
	function onMoveCamera(focus)
    		if focus == 'dad' then
        		setProperty('defaultCamZoom', 0.7)
    		elseif focus == 'boyfriend' then
       			setProperty('defaultCamZoom', 0.7)
    		end
	    end
	end
	if curStep == 4111 then
		doTweenX('bfpovTweenX', 'boyfriend', 750, 0.01, 'linear')
		doTweenX('BeastTweenX', 'dad', 50, 0.01, 'linear')
	 	doTweenY('bfpovTweenY', 'boyfriend', 1000, 0.01, 'linear')
		doTweenY('BeastTweenY', 'dad', 470, 0.01, 'linear')
	end
end		
local allowCountdown = false

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
		makeLuaSprite('circle', 'Circle-triple-trouble', 777, 0);
		setObjectCamera('circle', 'hud');
		addLuaSprite('circle', true);
		makeLuaSprite('text', 'Text-triple-trouble', -1100, 0);
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