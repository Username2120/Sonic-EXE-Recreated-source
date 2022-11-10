function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('youcantruncutscene2');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
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
function onStepHit()
	if curStep == 1 then
		function opponentNoteHit(id, direction, noteType, isSustainNote)  
			cameraShake('game', 0.01, 0.1)
		end
	end
	if curStep == 526 then
   		makeAnimatedLuaSprite('Static', 'daSTAT', 0, 0); -- "234" = sprite X pos, "567" = sprite Y pos
    		addAnimationByPrefix('Static', 'idle', 'staticFLASH', 20, true); -- "24" = framerate of animation, "false" = does the animation loop
   		addLuaSprite('Static', true); -- false = add behind characters, true = add over characters
    		setObjectCamera('Static', 'hud'); -- shows up in the camera center as he should
    		playSound('staticBUZZ', 1.2);
		scaleObject('Static', 3.6, 3.6);
        	objectPlayAnimation('Static', 'idle')
		function opponentNoteHit(id, direction, noteType, isSustainNote)  
			cameraShake('game', 0, 0.1)
		end
	end
	if curStep == 528 then
		setProperty('isPixelStage', true)
	end
	if curStep == 530 then
		removeLuaSprite('Static', false);
	end
	-- these ones are to make sure the sprite is removed after some lag spikes
	if curStep == 531 then
		removeLuaSprite('Static', false);
	end
	if curStep == 532 then
		removeLuaSprite('Static', false);
	end
	if curStep == 533 then
		removeLuaSprite('Static', false);
	end
	if curStep == 534 then
		removeLuaSprite('Static', false);
	end
	if curStep == 783 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
		function opponentNoteHit(id, direction, noteType, isSustainNote)  
			cameraShake('game', 0.01, 0.1)
		end
	end
	if curStep == 784 then
		setProperty('isPixelStage', false)
	end
	if curStep == 785 then
		removeLuaSprite('Static', false);
	end
	if curStep == 786 then
		removeLuaSprite('Static', false);
	end
	if curStep == 787 then
		removeLuaSprite('Static', false);
	end
	if curStep == 788 then
		removeLuaSprite('Static', false);
	end
end
function onBeatHit()
 -- this is such a bad way of doing this if it causes lag in the long run im sorry
   if curBeat == 20 then
    makeLuaSprite('RedVG', 'RedVG', 0, 0)
    addLuaSprite('RedVG', true);
    doTweenColor('hello', 'RedVG', 'FFFFFFFF', 0.1, 'quartIn');
    setObjectCamera('RedVG', 'hud');
   end
   if curBeat == 24 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 28 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 32 then
    setProperty('defaultCamZoom', 1.1);
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 36 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
    setProperty('defaultCamZoom', 0.7);
   end
   if curBeat == 40 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 44 then
      doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 48 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 52 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 56 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 60 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 64 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 68 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 72 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 76 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 80 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 84 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 88 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 92 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 96 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 100 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 104 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 108 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 112 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 116 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 120 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 124 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 128 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 130 then
      setProperty('defaultCamZoom', 1);
   end
   if curBeat == 132 then
      setProperty('defaultCamZoom', 0.8);
      doTweenX('bfTweenX', 'boyfriend', 1650, 0.0001, 'linear')
      doTweenX('SonicexeycrTweenX', 'dad', 1150, 0.0001, 'linear')
      doTweenX('gfTweenX', 'gf', 1430, 0.0001, 'linear')
      doTweenY('bfTweenY', 'boyfriend', 1020, 0.0001, 'linear')
      doTweenY('SonicexeycrTweenY', 'dad', 700, 0.0001, 'linear')
      doTweenY('gfTweenY', 'gf', 600, 0.0001, 'linear')
      doTweenAlpha('RedVGAlpha', 'RedVG', 0, 0.0001, 'linear')
   end
   if curBeat == 196 then
      setProperty('defaultCamZoom', 0.7);
      removeLuaSprite('stageswitch', destroy == true);
      doTweenX('bfTweenX', 'boyfriend', 1450, 0.001, 'linear')
      doTweenX('SonicexeycrTweenX', 'dad', 700, 0.001, 'linear')
      doTweenX('gfTweenX', 'gf', 950, 0.001, 'linear')
      doTweenY('bfTweenY', 'boyfriend', 700, 0.0001, 'linear')
      doTweenY('SonicexeycrTweenY', 'dad', 400, 0.0001, 'linear')
      doTweenY('gfTweenY', 'gf', 270, 0.0001, 'linear')
      doTweenAlpha('RedVGAlpha', 'RedVG', 1, 0.0001, 'linear')
   end
   if curBeat == 200 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 204 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 208 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 212 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 216 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 220 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 224 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 228 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 232 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 236 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 240 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 244 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 248 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 252 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 256 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 260 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 264 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 268 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 272 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 276 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 280 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 284 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 288 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 290 then
      setProperty('defaultCamZoom', 1);
   end
   if curBeat == 292 then
      setProperty('defaultCamZoom', 0.7);
      doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 296 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 300 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 304 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 308 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 312 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 316 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 320 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 324 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 328 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 332 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 336 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 342 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 346 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 350 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0.3, 1.5, 'linear')
   end
   if curBeat == 354 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 358 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 1, 1.5, 'linear')
   end
   if curBeat == 362 then
    doTweenAlpha('RedVGAlpha', 'RedVG', 0, 1.5, 'linear')
   end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		makeLuaSprite('blackscreen', 'blackscreen', 0, 0);
		setObjectCamera('blackscreen', 'hud');
		addLuaSprite('blackscreen', true);
		makeLuaSprite('circle', 'Circle-you-cant-run', 777, 0);
		setObjectCamera('circle', 'hud');
		addLuaSprite('circle', true);
		makeLuaSprite('text', 'Text-you-cant-run', -1100, 0);
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
	if tag == 'wait' then
    		doTweenAlpha('byebye', 'image', 0, 0.1, 'linear');
        if tag == 'wait' then
                doTweenAlpha('RedVGAlpha', 'RedVG', 0.2, 2, 'linear')
	end
    end
end
function onTweenCompleted(tag)
    if tag == 'bye' then
      doTweenAlpha('RedVGAlpha', 'RedVG', 1, 2, 'linear')
    end
  end
end
function onCreate()
    setProperty("skipCountdown", true)
end
