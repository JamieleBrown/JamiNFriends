
function onCreate()
    makeLuaSprite('flash', '', 0, 0)
    makeGraphic('flash', 1280, 720, 'FFFFFF')
    addLuaSprite('flash', false)
    setScrollFactor('flash', 0,0);
    setObjectCamera('flash', 'hud')
    setProperty('flash.visible', false)
    setScrollFactor('strumLineNotes', 0,0);
end

beatHitFuncs = {

    [30] = function()
        doTweenZoom('zoommm9', 'camGame', 0.9, 1.2, 'quintIn')
    end,

    [32] = function()
        setProperty('flash.visible', true)
        doTweenAlpha('flash1', 'flash', 0, 1, 'linear')
    end,

    [150] = function()
        setProperty('defaultCamZoom', 0.6)
    end,

    [152] = function()
        setProperty('defaultCamZoom', 0.5)
        setProperty('flash.visible', true)
        doTweenAlpha('flash1', 'flash', 0, 1, 'linear')
    end,

    [232] = function()
        setProperty('flash.visible', true)
        doTweenAlpha('flash1', 'flash', 0, 1, 'linear')
	end,
}

function onBeatHit()
    if beatHitFuncs[curBeat] then 
        beatHitFuncs[curBeat]() 
    end 
end

function onTweenCompleted(tag)
    if tag == 'flash1' then
        setProperty('flash.visible', false)
        doTweenAlpha('flashtonormal', 'flash', 1, 1, 'linear')
    elseif tag == 'flashfinale' then
        setProperty('flash.visible', false)
        doTweenAlpha('flashtonormal', 'flash', 1, 1, 'linear')
    end
end
