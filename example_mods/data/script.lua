local bfx = 850;
local bfy = 1000;
local zoomshit = 0;

function onCreate()
--insert code here
end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 1)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.85)
    end
end
