function onBeatHit()
    if curBeat == 64 then
	removeLuaSprite('stagelight_left', destroy == true);
    end
    if curBeat == 496 then
	removeLuaSprite('stagefront', destroy == true);
	removeLuaSprite('stagelight_mid', destroy == true);
        doTweenX('bfTweenX', 'boyfriend', 2150, 0.0001, 'linear')
        doTweenY('bfTweenY', 'boyfriend', 2050, 0.0001, 'linear')
        doTweenX('SonicexeycrTweenX', 'dad', 1950, 0.0001, 'linear')
        doTweenY('SonicexeycrTweenY', 'dad', 800, 0.0001, 'linear')
	function onMoveCamera(focus)
   	    if focus == 'dad' then
        	setProperty('defaultCamZoom', 0.3) -- 0.4
   	    elseif focus == 'boyfriend' then
        	setProperty('defaultCamZoom', 0.6) -- 0.7
            end
	end
    end
end
function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 0.4) -- 0.4
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.7) -- 0.7
    end
end
function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-fatal-death'); --Character json file for the death animation
end