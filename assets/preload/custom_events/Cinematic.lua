local inicio = 0
local final = 0

function onCreate()
	makeLuaSprite('Arriba', 'empty', 0, -120)
	makeGraphic('Arriba', 1280, 120, '000000')
	setObjectCamera('Arriba', 'hud')
	addLuaSprite('Arriba', false)

	makeLuaSprite('Abajo', 'empty', 0, 720)
	makeGraphic('Abajo', 1280, 120, '000000')
	setObjectCamera('Abajo', 'hud')
	addLuaSprite('Abajo', false)
end


function onUpdate()
	if inicio == 1 then
	doTweenY('Cinematics1', 'Arriba', 0, 0.5, 'Linear')
	doTweenY('Cinematics2', 'Abajo', 600, 0.5, 'Linear')
	end

	if final == 2 then
	doTweenY('Cinematics1', 'Arriba', -120, 0.2, 'Linear')
	doTweenY('Cinematics2', 'Abajo', 720, 0.2, 'Linear')
	end
end

function onEvent(name,value1,value2)
	if name == 'Cinematic' then
		inicio = tonumber(value1)
		final = tonumber(value1)
	end
end
