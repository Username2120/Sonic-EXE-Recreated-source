function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.5);
	makeLuaSprite('stageswitch', 'GreenHill', -950, -300);
	scaleObject('stageswitch', 0.1, 0.1);
	makeLuaSprite('stagefront', 'run/Grass', -600, -200);
	scaleObject('stagefront', 1.5, 1.5);
	makeLuaSprite('stagebacktwo', 'run/sky', -750, -250);
	scaleObject('stagebacktwo', 1.5, 1.5);
	makeLuaSprite('stageback', 'run/trees', -950, -300);
	scaleObject('stageback', 1.6, 1.6);
	makeLuaSprite('stagecurtains', 'run/TreesFront', -950, -300);
	scaleObject('stagecurtains', 1.6, 1.6);

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