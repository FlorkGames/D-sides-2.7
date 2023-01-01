function onCreate()
	makeLuaSprite('background ladders','boners/TOO-SLOW/background ladders',-200,-279.5)
	addLuaSprite('background ladders',false)
	setScrollFactor('background ladders',0.7,0.7)
	scaleObject('background ladders', 5.0, 5.0);

	makeLuaSprite('icicles background','boners/TOO-SLOW/icicles background',-150,-100)
	addLuaSprite('icicles background',false)
	setScrollFactor('icicles background',0.8,0.8)
	scaleObject('icicles background', 2.0, 2.0);

	makeLuaSprite('main stage','boners/TOO-SLOW/main stage',-500,5)
	addLuaSprite('main stage',false)
	scaleObject('main stage', 5.0, 5.0);

	makeLuaSprite('main stage spoopy','boners/TOO-SLOW/main stage spoopy',-500,5)
	addLuaSprite('main stage spoopy',false)
	setProperty('main stage spoopy.visible',false)
	scaleObject('main stage spoopy', 5.0, 5.0);

	makeAnimatedLuaSprite('snowgrave','snowgrave',defaultBoyfriendX-50,defaultBoyfriendY+250)
	addLuaSprite('snowgrave',true)
	addAnimationByPrefix('snowgrave','idle','Idle_Frozen',24,true)
	addAnimationByPrefix('snowgrave','1','1',24,false)
	addAnimationByPrefix('snowgrave','2','2',24,false)
	addAnimationByPrefix('snowgrave','3','3',24,false)
	addAnimationByPrefix('snowgrave','4','4',24,false)
	setProperty('snowgrave.visible',false)
	scaleObject('snowgrave', 2.0, 2.0);

	makeLuaSprite('icicles foreground','boners/TOO-SLOW/icicles foreground',-500,-231.5)
	addLuaSprite('icicles foreground',true)
	setScrollFactor('icicles foreground',1.4,1.4)
	scaleObject('icicles foreground', 5.0, 5.0);
end
function onStepHit()
	if curStep == 443 then
		setProperty('main stage.visible',false)
		setProperty('main stage spoopy.visible',true)
	end
end
function onUpdate(elapsed)
	if curStep >= 443 then
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Ice Note' then
			else
				setPropertyFromGroup('unspawnNotes',i,'noteSplashTexture','BloodSplash')
			end
		end
	end
end