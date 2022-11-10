function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.7);
	makeLuaSprite('stageswitch', 'GreenHill', -950, 0);
	scaleObject('stageswitch', 0.1, 0.1);
	makeLuaSprite('stagefront', 'run/Grass', 0, 0);
	scaleObject('stagefront', 1, 1);
	makeLuaSprite('stagemid', 'run/GrassBack', 0, 0);
	scaleObject('stagemid', 1, 1);
	makeLuaSprite('stagebacktwo', 'run/sky', 0, 0);
	scaleObject('stagebacktwo', 1, 1);
	makeLuaSprite('stageback', 'run/trees', 0, 0);
	scaleObject('stageback', 1, 1);
	makeLuaSprite('stagecurtains', 'run/TreesFront', 30, 0);
	scaleObject('stagecurtains', 1, 1);

	if not lowQuality then

end

	addLuaSprite('stageswitch', false);
	addLuaSprite('stagebacktwo', false);
	addLuaSprite('stagemid', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end