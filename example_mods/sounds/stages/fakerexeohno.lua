function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.7);
	makeLuaSprite('stagefront', 'exeBg/ground', 0, 0);
	scaleObject('stagefront', 1, 1);
	makeLuaSprite('stagebacktwo', 'exeBg/sky', 0, 0);
	scaleObject('stagebacktwo', 1, 1);
	makeLuaSprite('stageback', 'exeBg/backtrees', 0, 0);
	scaleObject('stageback', 1, 1);
	makeAnimatedLuaSprite('stageleft','exeBg/ExeAnimatedBG_Assets', 0, 0)
	addAnimationByPrefix('stageleft','dance','ExeBGAnim',24,true)
	objectPlayAnimation('stageleft','dance',false)
	makeLuaSprite('stageright', 'exeBg/TailsCorpse', 1000, 800);
	scaleObject('stageright', 1, 1);
	makeLuaSprite('stagemid', 'exeBg/trees', 0, 0);
	scaleObject('stagemid', 1, 1);
	
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