function onCreate()
	makeLuaSprite('limoSunset2', 'limo/limoSunset',-120,-250)
	setLuaSpriteScrollFactor('limoSunset2', 0.1, 0.1)
	scaleObject('limoSunset2',1.8,1.8)

	makeAnimatedLuaSprite('limoDrive2', 'limo/limoDrive',-120, 550)
	scaleObject('limoDrive2', 2.0, 2.0);

	makeAnimatedLuaSprite('bgLimo2','limo/bgLimo',20,380)
	setLuaSpriteScrollFactor('bgLimo2', 0.4, 0.4)
	scaleObject('bgLimo2', 2.0, 2.0);

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
	if songName == 'Satin Panties' then
		dancerFPS = 24
	end
	if songName == 'High' then
		dancerFPS = 31
	end
	addAnimationByPrefix('limoDancer2', 'idle', 'bg dancer sketch PINK',dancerFPS,false)
	addAnimationByPrefix('limoDancer3', 'idle', 'bg dancer sketch PINK',dancerFPS,false)
	addAnimationByPrefix('limoDancer4', 'idle', 'bg dancer sketch PINK',dancerFPS,false)
	addAnimationByPrefix('limoDancer5', 'idle', 'bg dancer sketch PINK',dancerFPS,false)

	makeLuaSprite('fastCarLol','limo/fastCarLol',-1000,200)
	setScrollFactor('fastCarLol',0.4,0.4)
	addLuaSprite('fastCarLol',false)
	doTweenX('FAST','fastCarLol',2000,0.5,'quadInOut')
	runTimer('FAST',10,1)
	scaleObject('fastCarLol', 2.0, 2.0);

	addLuaSprite('limoDrive2', false)
	addAnimationByPrefix('limoDrive2', 'idle', 'Limo stage', 24, true)
	setObjectOrder('gfGroup',8)
end
function onBeatHit()
	if curBeat % 4 == 0 and songName =='Satin Panties' then
		objectPlayAnimation('limoDancer2','idle',true)
		objectPlayAnimation('limoDancer3','idle',true)
		objectPlayAnimation('limoDancer4','idle',true)
		objectPlayAnimation('limoDancer5','idle',true)
	end
	if curBeat % 2 == 0 and songName =='High' then
		objectPlayAnimation('limoDancer2','idle',true)
		objectPlayAnimation('limoDancer3','idle',true)
		objectPlayAnimation('limoDancer4','idle',true)
		objectPlayAnimation('limoDancer5','idle',true)
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'FAST' then
		setProperty('fastCarLol.x',-1000)
		doTweenX('FAST','fastCarLol',2000,0.5,'quadInOut')
		runTimer('FAST',10,1)
	end
end