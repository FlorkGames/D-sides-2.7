local allowIdle = 1
function onEvent(name,value1,value2)
	if name == 'crowd anims' then
		if value1 == '1' then
			allowIdle = 0
			objectPlayAnimation('evilbottomBop','left',true)
			cancelTimer('idle')
			runTimer('idle',2,1)
		end
		if value1 == '2' then
			allowIdle = 0
			objectPlayAnimation('evilbottomBop','down',true)
			cancelTimer('idle')
			runTimer('idle',2,1)
		end
		if value1 == '3' then
			allowIdle = 0
			objectPlayAnimation('evilbottomBop','up',true)
			cancelTimer('idle')
			runTimer('idle',2,1)
		end
		if value1 == '4' then
			allowIdle = 0
			objectPlayAnimation('evilbottomBop','right',true)
			cancelTimer('idle')
			runTimer('idle',2,1)
		end
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'idle' then
		allowIdle = 1
	end
end