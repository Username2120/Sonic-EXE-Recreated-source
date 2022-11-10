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
		makeLuaSprite('circle', 'CircleFaker', 777, 0);
		setObjectCamera('circle', 'hud');
		addLuaSprite('circle', true);
		makeLuaSprite('text', 'TextFaker', -1100, 0);
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
	if curStep == 788 then
   		makeAnimatedLuaSprite('Static', 'daSTAT', 0, 0); -- "234" = sprite X pos, "567" = sprite Y pos
    		addAnimationByPrefix('Static', 'idle', 'staticFLASH', 20, true); -- "24" = framerate of animation, "false" = does the animation loop
   		addLuaSprite('Static', true); -- false = add behind characters, true = add over characters
    		setObjectCamera('Static', 'hud'); -- shows up in the camera center as he should
    		playSound('staticBUZZ', 1.2);
		scaleObject('Static', 3.6, 3.6);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
		setProperty("timeTxt.visible", false);
	 	doTweenY('timeBarTweenY', 'timeBar', -900, 0.01, 'linear')
    		setProperty('healthBar.x', 11500);
		noteTweenX("NoteMove1", 0, -11000, 0.001, cubeInOut)
		noteTweenX("NoteMove2", 1, -11000, 0.001, cubeInOut)
		noteTweenX("NoteMove3", 2, -11000, 0.001, cubeInOut)
		noteTweenX("NoteMove4", 3, -11000, 0.001, cubeInOut)
		noteTweenX("NoteMove5", 4, 11000, 0.001, cubeInOut)
		noteTweenX("NoteMove6", 5, 11000, 0.001, cubeInOut)
		noteTweenX("NoteMove7", 6, 11000, 0.001, cubeInOut)
		noteTweenX("NoteMove8", 7, 11000, 0.001, cubeInOut)
	 	doTweenY('iconP1TweenY', 'iconP1', 31140, 0.001, 'linear')
	 	doTweenY('iconP2TweenY', 'iconP2', 21140, 0.001, 'linear')
	end
	if curStep == 790 then
		removeLuaSprite('Static', false);
	end
	if curStep == 794 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 796 then
		removeLuaSprite('Static', false);
	end
	if curStep == 800 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 802 then
		removeLuaSprite('Static', false);
	end
	if curStep == 810 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 812 then
		removeLuaSprite('Static', false);
	end
	if curStep == 817 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 819 then
		removeLuaSprite('Static', false);
	end
	if curStep == 822 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 826 then
		removeLuaSprite('Static', false);
	end
	if curStep == 829 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 831 then
		removeLuaSprite('Static', false);
	end
	if curStep == 833 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 835 then
		removeLuaSprite('Static', false);
	end
	if curStep == 838 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 840 then
		removeLuaSprite('Static', false);
	end
	if curStep == 845 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 847 then
		removeLuaSprite('Static', false);
	end
	if curStep == 851 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 853 then
		removeLuaSprite('Static', false);
	end
	if curStep == 859 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 861 then
		removeLuaSprite('Static', false);
	end
	if curStep == 868 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 870 then
		removeLuaSprite('Static', false);
	end
	if curStep == 873 then
		addLuaSprite('Static', true);
        	objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
    		playSound('staticBUZZ', 1.2);
	end
	if curStep == 883 then
		makeLuaSprite('hehe', 'blackscreen', 0, 0)
		addLuaSprite('hehe', true)
		removeLuaSprite('Static', false);
		setProperty('camHUD.visible', false);
	end
end
function onCreate()
    setProperty("skipCountdown", true)
end