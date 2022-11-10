function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.7);
	makeLuaSprite('stagelight_right','LordXStage/tree', -750, 450)
	scaleObject('stagelight_right', 1, 01);
	makeAnimatedLuaSprite('stagelight_mid','LordXStage/NotKnuckles_Assets',1050, 1200)
	addAnimationByPrefix('stagelight_mid','dance','Notknuckles',24,true)
	objectPlayAnimation('stagelight_mid','dance',false)
	setScrollFactor('stagelight_mid', 1, 1);
	scaleObject('stagelight_mid', 0.6, 0.6);
	makeAnimatedLuaSprite('stagelight_lol','LordXStage/WeirdAssFlower_Assets',450,1300)
	addAnimationByPrefix('stagelight_lol','dance','flower',24,true)
	objectPlayAnimation('stagelight_lol','dance',false)
	setScrollFactor('stagelight_lol', 1, 1);
	makeLuaSprite('stagefront', 'LordXStage/floor', -600, 550);
	scaleObject('stagefront', 1, 1);
	makeLuaSprite('stagelight_left', 'LordXStage/smallflower', -800, 900);
	scaleObject('stagelight_left', 1, 1);
	makeLuaSprite('stageback', 'LordXStage/hills1', -600, 500);
	scaleObject('stageback', 1, 1);
	makeLuaSprite('stagebacktwo', 'LordXStage/sky', -1150, 200);
	scaleObject('stagebacktwo', 1, 1);

	if not lowQuality then

end

	addLuaSprite('stagebacktwo', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_lol', false);
	addLuaSprite('stagelight_mid', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end