function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.8);
	makeLuaSprite('stagefront', 'TailsBG', 600, -100);
	scaleObject('stagefront', 1.7, 1.7);
	makeLuaSprite('stageswitch', 'blackscreen', 600, -100);
	scaleLuaSprite('stageswitch', 4.0, 4.0);

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