function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.7);
	makeAnimatedLuaSprite('stagelight_left','FunInfiniteStage/majin FG1', 1600,800)
	addAnimationByPrefix('stagelight_left','dance','majin front bopper',24,true)
	objectPlayAnimation('stagelight_left','dance',false)
	setScrollFactor('stagelight_left', 0.9, 0.9);
	makeAnimatedLuaSprite('stagelight_right','FunInfiniteStage/majin FG2', -150, 850)
	addAnimationByPrefix('stagelight_right','dance','majin front bopper',24,true)
	objectPlayAnimation('stagelight_right','dance',false)
	setScrollFactor('stagelight_right', 0.9, 0.9);
	makeAnimatedLuaSprite('stagelight_mid','FunInfiniteStage/Majin Boppers Front',-50,-400)
	addAnimationByPrefix('stagelight_mid','dance','MajinBop1',24,true)
	objectPlayAnimation('stagelight_mid','dance',false)
	setScrollFactor('stagelight_mid', 0.9, 0.9);
	makeAnimatedLuaSprite('stagelight_lol','FunInfiniteStage/Majin Boppers Back',450,-500)
	addAnimationByPrefix('stagelight_lol','dance','MajinBop2',24,true)
	objectPlayAnimation('stagelight_lol','dance',false)
	setScrollFactor('stagelight_lol', 0.9, 0.9);
	makeLuaSprite('stagefront', 'FunInfiniteStage/floor BG', -600, 550);
	scaleObject('stagefront', 1.3, 1.3);
	makeLuaSprite('stagebush', 'FunInfiniteStage/Bush 1', -400, -200);
	scaleObject('stagebush', 1.3, 1.3);
	makeLuaSprite('stageback', 'FunInfiniteStage/Bush2', -400, 100);
	scaleObject('stageback', 1.4, 1.4);
	makeLuaSprite('stagebacktwo', 'FunInfiniteStage/sonicFUNsky', -750, -500);
	scaleObject('stagebacktwo', 1.4, 1.4);

	if not lowQuality then

end

	addLuaSprite('stagebacktwo', false);
	addLuaSprite('stagebush', false);
	addLuaSprite('stagelight_lol', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagelight_mid', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end