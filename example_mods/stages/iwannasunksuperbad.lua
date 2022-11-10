function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.8);
	makeLuaSprite('stagefront', 'sunky/stage', -50, 0);
	scaleObject('stagefront', 1, 1);
	makeLuaSprite('stageback', 'sunky/sunky BG', 0, 0);
	scaleObject('stageback', 0.8, 0.8);
	makeLuaSprite('stagecurtains', 'sunky/ball', 600, 0);
	scaleObject('stagecurtains', 1, 1);


	if not lowQuality then

end

	addLuaSprite('stageswitch', false);
	addLuaSprite('stagebacktwo', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
        addLuaSprite('sunk', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end