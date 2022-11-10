function onCountdownTick(counter)
     setProperty('countdownReady.visible', 0)
     setProperty('countdownSet.visible', 0)
     setProperty('countdownGo.visible', 0)

     if counter == 0 then -- "Three"
          -- there usually isn't a sprite here
     elseif counter == 1 then -- "Two"
          makeLuaSprite('ready', 'ready2', 200, 200);
	  setObjectCamera('ready', 'hud');
	  addLuaSprite('ready', true);
	  playSound('ready', 0.7);
     elseif counter == 2 then -- "One"
          makeLuaSprite('set', 'set2', 200, 200);
	  setObjectCamera('set', 'hud');
	  addLuaSprite('set', true);
	  playSound('set', 0.7);
	  removeLuaSprite('ready', true);
     elseif counter == 3 then -- "Go"
          makeLuaSprite('go', 'go2', 300, 150);
	  setObjectCamera('go', 'hud');
	  addLuaSprite('go', true);
	  playSound('go', 0.7);
	  removeLuaSprite('set', true);
     end
end
function onBeatHit()
	if curBeat == 215 then
		removeLuaSprite('stageswitch', destroy == true);
	end
end
function onStepHit()
	if curStep == 1 then 
		removeLuaSprite('go', true);
	end
	if curStep == 588 then
		setProperty('healthBar.alpha', 0)
		setProperty('scoreTxt.alpha', 0)
		setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
	end
	if curStep == 860 then 
		setProperty('healthBar.alpha', 1)
		setProperty('scoreTxt.alpha', 1)
		setProperty('iconP1.alpha', 1)
		setProperty('iconP2.alpha', 1)
	end
end