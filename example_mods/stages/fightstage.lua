function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.6);
	makeLuaSprite('stagefront', 'starved/stage', -600, -100);
	scaleObject('stagefront', 2.0, 2.0);
	makeLuaSprite('stagecurtains', 'starved/light', -600, -100);
	scaleObject('stagecurtains', 2.0, 2.0);
	makeLuaSprite('stagelight_left', 'starved/sonicisfuckingdead', 0, 400);
	scaleObject('stagelight_left', 1, 1);
	makeLuaSprite('stagelight_right', 'starved/towers', -600, -100);
	scaleObject('stagelight_right', 2.0, 2.0);
	makeLuaSprite('stagelight_righter', 'starved/city', -600, -100);
	scaleObject('stagelight_righter', 2.0, 2.0);

	if not lowQuality then

end

	addLuaSprite('stageswitch', false);
	addLuaSprite('stagebacktwo', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_righter', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end