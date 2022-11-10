function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.4);
	makeAnimatedLuaSprite('stagelight_left','fatal/launchbase', 0,0)
	addAnimationByPrefix('stagelight_left','dance','idle',0,true)
	objectPlayAnimation('stagelight_left','dance',false)
	scaleObject('stagelight_left', 6.0, 6.0);
	makeAnimatedLuaSprite('stagefront','domain', 0,0)
	addAnimationByPrefix('stagefront','dance2','idle',0,true)
	objectPlayAnimation('stagefront','dance2',false)
	scaleObject('stagefront', 6.0, 6.0);
	makeAnimatedLuaSprite('stagelight_mid','domain2', 0,0)
	addAnimationByPrefix('stagelight_mid','dance3','idle',0,true)
	objectPlayAnimation('stagelight_mid','dance3',false)
	scaleObject('stagelight_mid', 6.0, 6.0);
	makeAnimatedLuaSprite('stageback','truefatalstage', 0,0)
	addAnimationByPrefix('stageback','dance4','idle',24,true)
	objectPlayAnimation('stageback','dance4',false)
	scaleObject('stageback', 6.0, 6.0);

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