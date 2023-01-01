function onCreate()


    makeLuaSprite('bg','W0/TestWeekBG',-238,-321)
	addLuaSprite('bg',false)
	scaleObject('bg', 5.0, 5.0);

	makeLuaSprite('floor','W0/TestWeekFore',-389,-377)
	addLuaSprite('floor',true)
	scaleObject("floor", 5.5, 5.5)
	etLuaSpriteScrollFactor('floor', 1, 1);


	close(true)
	
end
