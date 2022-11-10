-- pulled straight from psych issues cause im a lazy fuck
-- with edits ofc
function onGameOverStart()
         deathvidcauseyoudiedlikeanerd = getRandomInt(1, 6)
         runTimer('1', 0, 1)
return Function_Continue
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == '1' then
			if deathvidcauseyoudiedlikeanerd == (1) then  
				startVideo('sanicGameOvers/Atomic', 1)
              	  	elseif deathvidcauseyoudiedlikeanerd == (2) then
				startVideo('sanicGameOvers/BfFuckingDies', 1)
			elseif deathvidcauseyoudiedlikeanerd == (3) then
				startVideo('sanicGameOvers/Car', 1)
			elseif deathvidcauseyoudiedlikeanerd == (4) then
				startVideo('sanicGameOvers/FastBear', 1)
			elseif deathvidcauseyoudiedlikeanerd == (5) then
				startVideo('sanicGameOvers/JoeManReference', 1)
			elseif deathvidcauseyoudiedlikeanerd == (6) then
				startVideo('sanicGameOvers/Kys', 1)
			--goes unused as of now
			--elseif deathvidcauseyoudiedlikeanerd == (7) then
				--startVideo('sanicGameOvers/g00seb4rn6', 1)
		end
	end
end
function onCreate()
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'thissoundfileisntreal'); --put in mods/music/
end