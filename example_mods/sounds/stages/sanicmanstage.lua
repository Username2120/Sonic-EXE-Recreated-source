function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.7);
	makeLuaSprite('stagefront', 'sanicbg', -600, -100);
	scaleObject('stagefront', 1.5, 1.5);

	if not lowQuality then

end

	addLuaSprite('stageswitch', false);
	addLuaSprite('stagebacktwo', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end