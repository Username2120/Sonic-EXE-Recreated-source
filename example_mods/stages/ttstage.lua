function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.6);
	makeLuaSprite('stagelight_left', 'Phase3/normal/FGTree1', -600, -250);
	scaleObject('stagelight_left', 1.3, 1.3);
	makeLuaSprite('stagelight_right', 'Phase3/normal/FGTree2', -900, -250);
	scaleObject('stagelight_right', 1.3, 1.3);
	makeLuaSprite('stagefront', 'Phase3/normal/TopBushes', -600, -250);
	scaleObject('stagefront', 1.3, 1.3);
	makeLuaSprite('stageback', 'Phase3/normal/TTTrees', -750, -300);
	scaleObject('stageback', 1.4, 1.4);
	makeLuaSprite('stagebacktwo', 'Phase3/normal/Glitch', -950, -300);
	scaleObject('stagebacktwo', 1.4, 1.4);
	makeLuaSprite('frontgrass', 'Phase3/xeno/Grass', -600, 200);
	scaleObject('frontgrass', 1, 1);
	makeLuaSprite('frontback', 'Phase3/normal/Glitch', -600, 200);
	scaleObject('frontback', 1, 1);
	makeLuaSprite('frontbacktrees', 'Phase3/xeno/BackTrees', -600, 200);
	scaleObject('frontbacktrees', 1, 1);
	makeLuaSprite('fronttree1', 'Phase3/xeno/FGTree1', -600, 200);
	scaleObject('fronttree1', 1, 1);
	makeLuaSprite('fronttree2', 'Phase3/xeno/FGTree2', -600, 200);
	scaleObject('fronttree2', 1, 1);
	makeLuaSprite('flip', 'Phase3/xeno/doaflip', -600, 200);
	scaleObject('flip', 1, 1);

	if not lowQuality then

end
	addLuaSprite('stagebacktwo', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end