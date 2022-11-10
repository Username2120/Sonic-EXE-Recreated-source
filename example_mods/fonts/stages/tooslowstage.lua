function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.5);
	makeLuaSprite('stagefront', 'PolishedP1/Grass', -600, -150);
	scaleObject('stagefront', 1.7, 1.7);
	makeLuaSprite('stagebacktwo', 'PolishedP1/BGSky', -600, -300);
	scaleObject('stagebacktwo', 1.7, 1.7);
	makeLuaSprite('stageback', 'PolishedP1/OuterBush', -600, -300);
	scaleObject('stageback', 1.7, 1.7);
	makeLuaSprite('stagecurtainsup', 'PolishedP1/OuterBushUp', -600, -400);
	scaleObject('stagecurtainsup', 1.7, 1.7);
	makeLuaSprite('stageleft', 'PolishedP1/TreesLeft', -600, -150);
	scaleObject('stageleft', 1.7, 1.7);
	makeLuaSprite('stageright', 'PolishedP1/TreesRight', -600, -150);
	scaleObject('stageright', 1.7, 1.7);
	makeLuaSprite('stagemid', 'PolishedP1/TreesMidBack', -600, -250);
	scaleObject('stagemid', 1.7, 1.7);
	makeLuaSprite('stagemidtwo', 'PolishedP1/TreesOuterMid2', -600, -250);
	scaleObject('stagemidtwo', 1.7, 1.7);
	makeLuaSprite('groundtail', 'PolishedP1/DeadTailz1', -250, 350);
	scaleLuaSprite('groundtail', 1.6, 1.6);
	makeLuaSprite('tailstick', 'PolishedP1/DeadTailz', -400, 150);
	scaleLuaSprite('tailstick', 1.4, 1.4);
	makeLuaSprite('stagecurtains', 'PolishedP1/TreesFG', -600, -150);
	scaleObject('stagecurtains', 1.7, 1.7);
	makeLuaSprite('deadk', 'PolishedP1/DeadKnux', -600, -250);
	scaleObject('deadk', 1.7, 1.7);
	makeLuaSprite('deade', 'PolishedP1/DeadEgg', 900, 250);
	scaleObject('deade', 1.7, 1.7);
	
	if not lowQuality then

end

	addLuaSprite('stagebacktwo', false);
	addLuaSprite('stagecurtainsup', false);
	addLuaSprite('stagemid', false);
	addLuaSprite('stagemidtwo', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stageleft', false);
	addLuaSprite('stageright', false);	
	addLuaSprite('stagefront', false);
	addLuaSprite('tailstick', false);
	addLuaSprite('groundtail', false);
	addLuaSprite('deadk', false);
	addLuaSprite('deade', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end