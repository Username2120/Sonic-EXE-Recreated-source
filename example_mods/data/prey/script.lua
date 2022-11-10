local width = 0
local spriteName = "stardustFloor"
local spriteNamee = "stardustBg"

function onCreate()
	makeLuaSprite("bg1", spriteName, 0, 0)
	width = getProperty("bg1.width")	
	makeLuaSprite("bg3", spriteNamee, 0, 100)
	width = getProperty("bg3.width")
	
	makeLuaSprite("bg2", spriteName, width-20, 0)
	makeLuaSprite("bg4", spriteNamee, width-20, 100)

	addLuaSprite("bg3", false)
	addLuaSprite("bg4", false)

	doTweenX("bg1Tween", "bg1", -width, 1, "linear")
	doTweenX("bg2Tween", "bg2", -20, 1, "linear")
	doTweenX("bg3Tween", "bg3", -width, 1, "linear")
	doTweenX("bg4Tween", "bg4", -20, 1, "linear")

	makeLuaText('#', '# :', 0, 180, 155)
	addLuaText('#')
	setTextColor('#', 'FFFFFF')
	
	makeLuaText('-', '- :', 0, 150, 30)
	addLuaText('-')
	setTextColor('-', 'FFFFFF')
	
	makeLuaText('_', '_ :', 0, 120, 90)
	addLuaText('_')
	setTextColor('_', 'FFFFFF')
	setObjectCamera('#', 'hud')
	setObjectCamera('-', 'hud')
	setObjectCamera('_', 'hud')
	
	setTextSize('_', 50)
	setTextSize('-', 50)
	setTextSize('#', 50)

	makeLuaSprite('time', 'time', 90.5, 113.15);
	setLuaSpriteScrollFactor('time', 0, 0);
    setProperty('time.scale.x', 3.8)
    setProperty('time.scale.y', 3.8)
	setProperty('time.antialiasing',false)

	addLuaSprite('time', true);
		setObjectCamera('time','hud')

	makeLuaSprite('misses', 'misses', 95.5, 178.15);
	setLuaSpriteScrollFactor('misses', 0, 0);
    setProperty('misses.scale.x', 3.8)
    setProperty('misses.scale.y', 3.8)
	setProperty('misses.antialiasing',false)

	addLuaSprite('misses', true);
		setObjectCamera('misses','hud')

	makeLuaSprite('score', 'score', 85.5, 48.15);
	setLuaSpriteScrollFactor('score', 0, 0);
    setProperty('score.scale.x', 3.8)
    setProperty('score.scale.y', 3.8)
	setProperty('score.antialiasing',false)

	addLuaSprite('score', true);
		setObjectCamera('score','hud')
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
		makeLuaSprite('circle', 'Circle-prey', 777, 0);
		setObjectCamera('circle', 'hud');
		addLuaSprite('circle', true);
		makeLuaSprite('text', 'Text-prey', -1100, 0);
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
function onTweenCompleted(tag)
	if tag == "bg1Tween" then
		setProperty("bg1.x", 0)
		setProperty("bg2.x", width-20)
		setProperty("bg3.x", 0)
		setProperty("bg4.x", width-20)
		
		doTweenX("bg1Tween", "bg1", -width, 1, "linear")
		doTweenX("bg2Tween", "bg2", -20, 1, "linear")
		doTweenX("bg3Tween", "bg3", -width, 1, "linear")
		doTweenX("bg4Tween", "bg4", -20, 1, "linear")
	end
end
function onUpdate(elapsed)
	setTextString('#', '#: ' .. getProperty('songMisses'))
	setTextString('-', '-: ' .. getProperty('songScore'))
	setTextString('_', '_: ' .. getTextString('timeTxt'))
end
function onSongStart()
	noteTweenX("NoteMove1", 0, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove2", 1, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove3", 2, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove4", 3, -1000, 0.5, cubeInOut)
end
function onCreatePost()
	setProperty('scoreTxt.visible', 0)
	setProperty("timeTxt.visible", false);
	setProperty("timeBar.visible", false)
    	setProperty('healthBar.x', 500);
end
function onStepHit()
	if curStep == 1 then
		setProperty('camHUD.visible', false);
		makeLuaSprite('stagefronter', 'blackscreen', 0, 0);
		addLuaSprite('stagefronter', false);
	 	doTweenY('timeBarTweenY', 'timeBar', -900, 0.01, 'linear')
	end
	if curStep == 128 then
		removeLuaSprite('stagefronter', destroy == true);
		addLuaSprite("bg1", true)
		addLuaSprite("bg2", true)
	end
	if curStep == 129 then
		setProperty('camHUD.visible', true);
	end
	if curStep == 1548 then
		makeLuaText('dioone', 'Seems that bucket of bolts had to lay off the nitro this time around!', 764, 250, 630)
		setTextSize('dioone', 32)
		setTextAlignment('dioone', 'center')
		addLuaText('dioone')
	end
	if curStep == 1580 then
		removeLuaText('dioone', true)
	end
	if curStep == 1588 then
		makeLuaText('diotwo', 'Hey Red Head!', 364, 470, 630)
		setTextSize('diotwo', 32)
		setTextAlignment('diotwo', 'center')
		addLuaText('diotwo')
	end
	if curStep == 1595 then
		removeLuaText('diotwo', true)
	end
	if curStep == 1600 then
		makeLuaText('dioth', 'Might wanna repair your toys!', 364, 470, 630)
		setTextSize('dioth', 32)
		setTextAlignment('dioth', 'center')
		addLuaText('dioth')
	end
	if curStep == 1615 then
		removeLuaText('dioth', true)
	end
	if curStep == 1624 then
		makeLuaText('diof', 'You dont even know your fate hedgehog.', 764, 250, 630)
		setTextSize('diof', 32)
		setTextAlignment('diof', 'center')
		addLuaText('diof')
        	setTextColor('diof', 'c11d1d')
	end
	if curStep == 1667 then
		removeLuaText('diof', true)
	end
	if curStep == 1676 then
		makeLuaText('diofi', '*maniacal cackling*', 464, 420, 630)
		setTextSize('diofi', 32)
		setTextAlignment('diofi', 'center')
		addLuaText('diofi')
        	setTextColor('diofi', 'c11d1d')
	end
	if curStep == 1780 then
		removeLuaText('diofi', true)
	end
	if curStep == 3144 then
		doTweenX('gfTweenX', 'gf', 4000, 4, 'linear')
	end
	if curStep == 3335 then
		makeLuaText('dioe', 'Man, you really like scrambling your own plans dont cha-', 764, 250, 630)
		setTextSize('dioe', 32)
		setTextAlignment('dioe', 'center')
		addLuaText('dioe')
		doTweenX('dadTweenX', 'dad', 300, 2, 'linear')
		doTweenX('gfTweenX', 'gf', 4000, 0.001, 'linear')
	end
	if curStep == 3362 then
		doTweenY('gfTweenY', 'gf', 1650, 0.1, 'linear')
		doTweenX('gfTweenX', 'gf', 300, 1, 'linear')
	end
	if curStep == 3368 then
		removeLuaText('dioe', true)
	end
end		
function onBeatHit()
	if curBeat == 60 then
		doTweenX('Knux-flippedTweenX', 'dad', 1400, 1, 'linear')
	end
	if curBeat == 384 then
		doTweenX('Knux-flippedTweenX', 'dad', 300, 1.5, 'linear')
	end
	if curBeat == 390 then
		doTweenX('Knux-flippedTweenX', 'dad', 2400, 2, 'linear')
		doTweenY('Knux-flippedTweenY', 'dad', 1200, 0.01, 'linear')
	end
end