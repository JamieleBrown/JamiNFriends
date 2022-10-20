Dodged = false;
canDodge = false;

shootwheel = false

noteshappen = true

local waitlol = false
local ItsActuallyReady = true

local ShotEff = false

function onUpdate(elapsed)
    if keyJustPressed('space') and waitlol == false then
        health = getProperty('health')
        removeLuaSprite('eye', true)
        setProperty('health', health+ 0.20);
        characterPlayAnim("boyfriend", "attack", true)
        characterPlayAnim("dad", "hurt2", true)
        setTextString('attack-alert', 'Attack : Not Ready')
        waitlol = true
        runTimer('you can attack now', 3);
        runTimer('AnimationEnd', 0.2);
        playSound('dodge_C',1)
        
        --debugPrint('Hit Char Sound')
        
        noteshappen = false
        ItsActuallyReady = false
    end
    -------------------------------------------------------------

    for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --Stops original animations
		end
	end

    if getProperty('dad.animation.curAnim.name') == 'attack' and dadName == 'Fire' and shootwheel == true then
        setProperty('Wheel.alpha', 1)
        doTweenX('Boomaringa', 'Wheel', getProperty('boyfriend.x') +300, 0.5, 'linear')
        runTimer('Shoty', 0.1);
        runTimer('Lolers', 1);
        runTimer('AnimationEnd', 0.5)
        canDodge = true;
        noteshappen = false

        waitlol = true;
        runTimer('AttackGoing', 1.5)
        setTextString('attack-alert', 'Attack : Wait')
    end

    if getProperty('dad.animation.curAnim.name') == 'attack' and dadName == 'Fire' and shootwheel == false then
        setProperty('Bullet.alpha', 1)
        doTweenX('ZUUUSH', 'Bullet', getProperty('boyfriend.x') +300, 0.5, 'linear')
        runTimer('Bill', 0.1);
        runTimer('Bruhby', 0.6);
        runTimer('AnimationEnd', 0.5)
        canDodge = true;
        noteshappen = false

        waitlol = true;
        runTimer('AttackGoing', 1.5)
        setTextString('attack-alert', 'Attack : Wait')
    end
        
    if canDodge == true and keyJustPressed('space') then
        
        Dodged = true;
        setProperty('boyfriend.specialAnim', true);
        canDodge = false
        
    end

    ---------------------------------------------
    if getProperty('dad.animation.curAnim.name') == 'attack2' and dadName == 'Fire' then
        health = getProperty('health')
        setProperty('health', health- 0.02);
        makeAnimatedLuaSprite('eye', 'eye', 0, 0)
            addLuaSprite('eye', true)
        ShotEff = true
    else
        setProperty('eye.alpha', 1)
        ShotEff = false
    end
end

function onEvent(name, value1, value2)
    if name == "Play Animation" then
        if value1 == 'Big-Blast' then
        playSound('shoot_C',1)
        --debugPrint('Big-attack2 Sound')
        end
	end
end

function onStepHit()
    if curStep % 1 == 0 and ShotEff == true then
        playSound('pea0',1)
        --debugPrint('Multi-attack2 Sound')
    end
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('Wheel', 'spin');
        objectPlayAnimation('Bullet', 'zoom');
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
        if tag == 'Lolers' and Dodged == true and shootwheel == true then
        doTweenX('Boomaringa', 'Wheel', getProperty('dad.x') +200, 0.5, 'linear')
        doTweenAlpha('Proj go bye', 'Wheel', 0, 1, 'linear')
        characterPlayAnim('boyfriend', 'dodge', true);
        playSound('dodge_C',1)
        --debugPrint('Dodge Sound')
        Dodged = false
        shootwheel = false
    end

    ----------------------------------------------------------------

    if tag == 'Bill' and Dodged == false and shootwheel == false then
        setProperty('health', getProperty('health') -0.1);
        characterPlayAnim('boyfriend', 'hurt', true);
        doTweenAlpha('Big Bul gone', 'Bullet', 0, 1, 'linear')
        playSound('hurt_C',1)
        --debugPrint('Being Hurt Sound')
    end

    if tag == 'Bill' and Dodged == true and shootwheel == false then
        doTweenAlpha('Big Bul gone', 'Bullet', 0, 0.5, 'linear')
        characterPlayAnim('boyfriend', 'dodge', true);
        Dodged = false
        playSound('dodge_C',1)
        --debugPrint('Dodge Sound')
    end

    if tag == 'Bruhby' and shootwheel == false then
        shootwheel = true
        setProperty('Bullet.x', getProperty('dad.x') -250)
    end

    ------------------------------------------------------------------

    if tag == 'AnimationEnd' then
        noteshappen = true
    end

    ------------------------------------------------------------------
    if tag == 'you can attack now' or tag == 'AttackGoing' and ItsActuallyReady == true then
        waitlol = false
        setTextString('attack-alert', 'Attack : Ready')
        ItsActuallyReady = true
    elseif tag == 'AttackGoing' and ItsActuallyReady == false then
        waitlol = false
        setTextString('attack-alert', 'Attack : Not Ready')
    end
end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteshappen == true then
    characterPlayAnim('dad', singAnims[direction + 1], true);
	end
end