function opponentNoteHit(elapsed)
    health = getProperty('health')
    if getProperty('health') > 0.25 then
        setProperty('health', health- 0.025);
    end
end
