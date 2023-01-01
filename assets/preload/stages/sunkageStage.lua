function onCreate()
	makeLuaSprite('milksky','boners/MILK/milksky',0,0)
	addLuaSprite('milksky',false)
	scaleObject('milksky', 5.0, 5.0);

	makeLuaSprite('milkmostofit','boners/MILK/milkmostofit',0,0)
	addLuaSprite('milkmostofit',false)
	scaleObject('milkmostofit', 5.0, 5.0);

	makeLuaSprite('milkhole1','boners/MILK/milkhole1',0,0)
	addLuaSprite('milkhole1',false)
	setProperty('milkhole1.visible',false)
	scaleObject('milkhole1', 5.0, 5.0);

	makeLuaSprite('milkwindow','boners/MILK/milkwindow',0,0)
	addLuaSprite('milkwindow',false)
	scaleObject('milkwindow', 5.0, 5.0);

	makeLuaSprite('milkwindow2','boners/MILK/milkwindow2',0,0)
	addLuaSprite('milkwindow2',false)
	setProperty('milkwindow2.visible',false)
	scaleObject('milkwindow2', 5.0, 5.0);

	makeLuaSprite('table','boners/MILK/table',0,0)
	addLuaSprite('table',false)
	scaleObject('table', 5.0, 5.0);
end
function onStepHit()
	if curStep == 896 then
		setProperty('milkhole1.visible',true)
		doTweenX('Dick Kick0','boyfriendGroup',870,0.2,'quadInOut')
		doTweenX('Dick Kick1','dadGroup',-400,0.5,'quadInOut')
	end
	if curStep == 960 then
		doTweenAlpha('mighty','dad',1,0.5,'quadInOut')
	end
	if curStep == 1472 then
		setProperty('defaultCamZoom',1)
		doTweenX('mighty kick','dadGroup',defaultOpponentX-550,0.2,'quadInOut')
	end
	if curStep == 1473 then
		doTweenAngle('egg kickedSpin','boyfriend',360,0.2,'quadInOut')
		doTweenX('egg kickedX','boyfriend',defaultBoyfriendX-1000,0.2,'quadInOut')
		doTweenY('egg kickedY','boyfriend',300,0.2,'quadInOut')
		doTweenX('egg kickedSmallX','boyfriend.scale',0.3,0.2,'quadInOut')
		doTweenY('egg kickedSmallY','boyfriend.scale',0.3,0.2,'quadInOut')
	end
	if curStep == 1612 then
		setProperty('boyfriend.visible',false)
	end
end
function onTweenCompleted(tag)
	if tag == 'Dick Kick1' then
		doTweenAlpha('sunk flew away','dadGroup',0,0.0000001,'quadInOut')
		doTweenX('dadDefaultX','dadGroup',defaultOpponentX,0.0000001,'quadInOut')
	end
	if tag == 'mighty kick' then
		setProperty('dadGroup.visible',false)
		setProperty('milkwindow2.visible',true)
		setProperty('milkwindow.visible',false)
	end
end