function onCreate()
	makeLuaSprite('limoSunset2', 'limo/limoSunsetNight',-120,-250)
	setLuaSpriteScrollFactor('limoSunset2', 0.1, 0.1)
	scaleObject('limoSunset2',1.8,1.8)

	makeAnimatedLuaSprite('limoDrive2', 'limo/limoDriveDARK',-120, 550)
	setLuaSpriteScrollFactor('limoDrive2', 1, 1)
	scaleObject('limoDrive2', 2.0, 2.0);
	makeAnimatedLuaSprite('bgLimo2','limo/bgLimoDARK',20,380)
	setLuaSpriteScrollFactor('bgLimo2', 0.4, 0.4)
	scaleObject('bgLimo2', 2.0, 2.0);

	if songName == 'Milf' then
		makeAnimatedLuaSprite('fireworks','limo/fireworks',500,-300)
		addAnimationByPrefix('fireworks','blue','FireworkBlue',40,false)
		addAnimationByPrefix('fireworks','green','FireworkGreen',40,false)
		addAnimationByPrefix('fireworks','pink','FireworkPink',40,false)
		addAnimationByPrefix('fireworks','red','FireworkRed',40,false)
		scaleObject('fireworks', 6.0, 6.0);
	end

	if not lowQuality then
	makeAnimatedLuaSprite('limoDancer2', 'limo/limoDancer',750,0)
	setLuaSpriteScrollFactor('limoDancer2', 0.4, 0.4)
	scaleObject('limoDancer2', 2.0, 2.0);

	makeAnimatedLuaSprite('limoDancer3', 'limo/limoDancer',450,0)
	setLuaSpriteScrollFactor('limoDancer3', 0.4, 0.4)
	scaleObject('limoDancer3', 2.0, 2.0);
	
	makeAnimatedLuaSprite('limoDancer4', 'limo/limoDancer',1050,0)
	setLuaSpriteScrollFactor('limoDancer4', 0.4, 0.4)
	scaleObject('limoDancer4', 2.0, 2.0);
	
	makeAnimatedLuaSprite('limoDancer5', 'limo/limoDancer',1350,0)
	setLuaSpriteScrollFactor('limoDancer5', 0.4, 0.4)
	scaleObject('limoDancer5', 2.0, 2.0);
	end

	addLuaSprite('limoSunset2', false)
	addLuaSprite('bgLimo2', false)
	addAnimationByPrefix('bgLimo2', 'idle', 'BG limo PINK', 20,true); 
	addLuaSprite('limoDancer2', false)
	addLuaSprite('limoDancer3', false)
	addLuaSprite('limoDancer4', false)
	addLuaSprite('limoDancer5', false)
	addLuaSprite('fireworks', false)
	if songName =='Awooga' then
		dancerFPS = 19
	end
	if songName =='Milf' then
		dancerFPS = 48
	end
	addAnimationByPrefix('limoDancer2', 'idle', 'bg dancer sketch DARK',dancerFPS,false)
	addAnimationByPrefix('limoDancer3', 'idle', 'bg dancer sketch DARK',dancerFPS,false)
	addAnimationByPrefix('limoDancer4', 'idle', 'bg dancer sketch DARK',dancerFPS,false)
	addAnimationByPrefix('limoDancer5', 'idle', 'bg dancer sketch DARK',dancerFPS,false)

	makeLuaSprite('fastCarLolDARK','limo/fastCarLolDARK',-1000,200)
	setScrollFactor('fastCarLolDARK',0.4,0.4)
	addLuaSprite('fastCarLolDARK',false)
	scaleObject('fastCarLolDARK', 2.0, 2.0);
	doTweenX('FAST','fastCarLolDARK',2000,0.5,'quadInOut')
	runTimer('FAST',10,1)

	addLuaSprite('limoDrive2', false)
	setObjectOrder('limoDrive2',7)
	addAnimationByPrefix('limoDrive2', 'idle', 'Limo stage', 24, true)
	scaleObject('limoDrive2', 2.0, 2.0);
	fireworkTime = 0.35
	objectPlayAnimation('fireworks','blue',true)
	runTimer('blue-pink',fireworkTime,1)
end
function onBeatHit()
	if curBeat % 4 == 0 and songName =='Awooga' then
		objectPlayAnimation('limoDancer2','idle',true)
		objectPlayAnimation('limoDancer3','idle',true)
		objectPlayAnimation('limoDancer4','idle',true)
		objectPlayAnimation('limoDancer5','idle',true)
	end
	if curBeat % 2 == 0 and songName =='Milf' then
		objectPlayAnimation('limoDancer2','idle',true)
		objectPlayAnimation('limoDancer3','idle',true)
		objectPlayAnimation('limoDancer4','idle',true)
		objectPlayAnimation('limoDancer5','idle',true)
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'FAST' then
		setProperty('fastCarLolDARK.x',-1000)
		doTweenX('FAST','fastCarLolDARK',2000,0.5,'quadInOut')
		runTimer('FAST',10,1)
	end
	if tag == 'blue-pink' then
		setProperty('fireworks.x',1100)
		setProperty('fireworks.y',-400)
		objectPlayAnimation('fireworks','pink',true)
		runTimer('pink-green',fireworkTime,1)
	end
	if tag == 'pink-green' then
		setProperty('fireworks.x',800)
		setProperty('fireworks.y',-400)
		objectPlayAnimation('fireworks','green',true)
		runTimer('green-red',fireworkTime,1)
	end
	if tag == 'green-red' then
		setProperty('fireworks.x',1400)
		setProperty('fireworks.y',-300)
		objectPlayAnimation('fireworks','red',true)
		runTimer('red-blue',fireworkTime,1)
	end
	if tag == 'red-blue' then
		setProperty('fireworks.x',500)
		setProperty('fireworks.y',-300)
		objectPlayAnimation('fireworks','blue',true)
		runTimer('blue-pink',fireworkTime,1)
	end
end