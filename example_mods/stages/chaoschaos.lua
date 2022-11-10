function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.5);
	makeAnimatedLuaSprite('stagecurtains','Chamber/Porker Lewis',4400,900)
	addAnimationByPrefix('stagecurtains','dance','Porker FG',24,true)
	objectPlayAnimation('stagecurtains','dance',false)
	scaleObject('stagecurtains', 1, 1);
	makeAnimatedLuaSprite('stagefront','Chamber/Floor',0,2314)
	addAnimationByPrefix('stagefront','dance','floor yellow',0,true)
	objectPlayAnimation('stagefront','dance',false)
	scaleObject('stagefront', 1.3, 1.3);
	makeAnimatedLuaSprite('stagelight_left','Chamber/FleetwayBGshit',0,300)
	addAnimationByPrefix('stagelight_left','dance','BGyellow',0,true)
	objectPlayAnimation('stagelight_left','dance',false)
	scaleObject('stagelight_left', 0.9, 0.9);
	makeAnimatedLuaSprite('stagebacktwo','Chamber/Wall',0,0)
	addAnimationByPrefix('stagebacktwo','dance','Wall instance',0,true)
	objectPlayAnimation('stagebacktwo','dance',false)
	scaleObject('stagebacktwo', 1, 1);
	makeAnimatedLuaSprite('stagelight_right','Chamber/The Chamber',1800,1950)
	addAnimationByPrefix('stagelight_right','dance','Chamber Sonic Fall0025',0,true)
	objectPlayAnimation('stagelight_right','dance',false)
	scaleObject('stagelight_right', 1, 1);
	makeAnimatedLuaSprite('stagelight_lol','Chamber/Emerald Beam Charged',1800,0)
	addAnimationByPrefix('stagelight_lol','dance','Emerald Beam Charged instance',60,true)
	objectPlayAnimation('stagelight_lol','dance',false)
	scaleObject('stagelight_lol', 1, 1);
	makeAnimatedLuaSprite('stagelight_mid','Chamber/Emeralds',2400,1000)
	addAnimationByPrefix('stagelight_mid','dance','TheEmeralds instance',24,true)
	objectPlayAnimation('stagelight_mid','dance',false)
	scaleObject('stagelight_mid', 1, 1);
	if not lowQuality then

end

	addLuaSprite('stagebacktwo', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_lol', false);
	addLuaSprite('stagelight_mid', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end