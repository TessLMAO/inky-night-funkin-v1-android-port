local xx = 800;
local yy = 600;
local xx2 = 1500;
local yy2 = 800;
local ofs = 60;
local followchars = true;
local del = 0;
local del2 = 0;

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.6)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            setProperty('defaultCamZoom',0.9)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
	if curStep < 672 then
	setProperty('songLength', 74.67 * 1000) -- set time to 1 minute
	end
	if curStep == 672 then
	setProperty('songLength', 219.08 * 1000) -- set time to 1 minute
	-- setProperty('songLength', getPropertyFromClass('sound.music.length', 'FlxG')) -- set back to default
	end
end

function onStepHit()
	if curStep == 640 then
	setProperty('enter.visible', false);
	setProperty('dad.visible', false);
	setProperty('boyfriend.visible', false);
	setProperty('gf.visible', false);
	setPropertyFromGroup('opponentStrums', 0, 'x', -1000);
	setPropertyFromGroup('opponentStrums', 1, 'x', -1000);
	setPropertyFromGroup('opponentStrums', 2, 'x', -1000);
	setPropertyFromGroup('opponentStrums', 3, 'x', -1000);
	end
	if curStep == 672 then
	setProperty('enter.visible', true);
	setProperty('dad.visible', true);
	setProperty('boyfriend.visible', true);
	end
end


function opponentNoteHit()
    health = getProperty('health')
	if curStep > 672 and curStep < 10000 then
    if getProperty('health') > 0.25 then
        setProperty('health', health -0.0250);
		end
    end
end