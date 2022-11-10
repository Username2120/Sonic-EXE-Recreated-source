function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.8);
	makeLuaSprite('stagefront', 'fakerBG/grass', 0, 0);
	scaleObject('stagefront', 1, 1);
	makeLuaSprite('stagebacktwo', 'fakerBG/sky', 0, 0);
	scaleObject('stagebacktwo', 1, 1);
	makeLuaSprite('stageback', 'fakerBG/mountains', 0, 0);
	scaleObject('stageback', 1, 1);
	makeLuaSprite('stageleft', 'fakerBG/pillar1', 0, 0);
	scaleObject('stageleft', 1, 1);
	makeLuaSprite('stageright', 'fakerBG/pillar2', 0, 0);
	scaleObject('stageright', 1, 1);
	makeLuaSprite('stagecurtains', 'fakerBG/plant', 0, 0);
	scaleObject('stagecurtains', 1, 1);
	makeLuaSprite('stagemidtwo', 'fakerBG/tree1', 0, 0);
	scaleObject('stagemidtwo', 1, 1);
	makeLuaSprite('stagemid', 'fakerBG/tree2', 0, 0);
	scaleObject('stagemid', 1, 1);
	makeLuaSprite('stagelight_left', 'fakerBG/flower1', 0, 0);
	scaleObject('stageleft', 1, 1);
	makeLuaSprite('stagelight_right', 'fakerBG/flower2', 0, 0);
	scaleObject('stageright', 1, 1);
	
	if not lowQuality then

end

	addLuaSprite('stagebacktwo', false);
	addLuaSprite('stagecurtainsup', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagemid', false);
	addLuaSprite('stagemidtwo', false);
	addLuaSprite('stageleft', false);
	addLuaSprite('stageright', false);	
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end