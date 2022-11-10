-- stage swapping through play animation event.
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'stage1' then
			setProperty('stage1.visible', true);
			setProperty('stage2.visible', false);
		end
		if value1 == 'stage2' then
			setProperty('stage1.visible', false);
			setProperty('stage2.visible', true);
		end
		if value1 == 'stage3' then
			setProperty('stage1.visible', false);
			setProperty('stage2.visible', false);
		end
	end
end