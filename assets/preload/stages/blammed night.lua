function onCreate()
	makeLuaSprite('sky','philly/skyDark', -100, 00);
	scaleObject('sky', 2.0, 2.0);
	setLuaSpriteScrollFactor('sky', 0.1, 0.1);

	makeLuaSprite('city','philly/cityDark',-20,-10);
	setLuaSpriteScrollFactor('city', 0.3, 0.3);
	scaleObject('city', 1.7, 1.7);

	makeLuaSprite('behindTrain','philly/behindTrainDark',50,80);
	scaleObject('behindTrain',2.6,2.6);

	makeLuaSprite('street','philly/streetDark', -40, 50);
	scaleObject('street', 2.0, 2.0);
	makeLuaSprite('train','philly/trainDark',  2000, 360);
	scaleObject('train', 5.0, 5.0);

	makeLuaSprite('blue', 'philly/win0',-20,-10);
        setLuaSpriteScrollFactor('blue', 0.3, 0.3);
	scaleObject('blue', 4.25, 4.25);

	makeLuaSprite('green', 'philly/win1',-20,-10);
        setLuaSpriteScrollFactor('green', 0.3, 0.3);
	scaleObject('green', 4.25, 4.25);

	makeLuaSprite('pink', 'philly/win2',-20,-10);
        setLuaSpriteScrollFactor('pink', 0.3, 0.3);
	scaleObject('pink', 4.25, 4.25);

	makeLuaSprite('red', 'philly/win3',-20,-10);
        setLuaSpriteScrollFactor('red', 0.3, 0.3);
	scaleObject('red', 4.25, 4.25);

	makeLuaSprite('yellow', 'philly/win4',-20,-10);
        setLuaSpriteScrollFactor('yellow', 0.3, 0.3);
	scaleObject('yellow', 4.25, 4.25);

	makeAnimatedLuaSprite('Crowd2DARK','philly/Crowd2DARK',-200,138);
	addAnimationByPrefix('Crowd2DARK','idle','Crowd2 instance 1',24,false);
	scaleObject('Crowd2DARK', 2.0, 2.0);

	addLuaSprite('sky', false);
	addLuaSprite('city', false);
	addLuaSprite('blue', false);
	addLuaSprite('green', false);
	addLuaSprite('pink', false);
	addLuaSprite('red', false);
	addLuaSprite('yellow', false);
	addLuaSprite('behindTrain', false);
	addLuaSprite('train', false);
	addLuaSprite('street', false);
	addLuaSprite('Crowd2DARK', false);
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	runTimer('trainsound',4)
	runTimer('blueAppear',2)
end
function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('Crowd2DARK','idle',true)
	end
end
function onTimerCompleted(t,l,ll)
	if t == 'trainsound' then
	    playSound('train_passes');
	    runTimer('trainCome',4)
	end
	if t == 'trainCome' then
		setProperty('train.x', 1150)
		doTweenX('train','train',-1150,0.4,'sineOut')
		triggerEvent('Play Animation','hairBlow',2)
		runTimer('trainCome2',0.4)
	end
	if t == 'trainCome2' then
		setProperty('train.x', 1150)
		doTweenX('train','train',-1150,0.4,'sineOut')
		runTimer('trainCome3',0.4)
	end
		if t == 'trainCome3' then
		setProperty('train.x', 1150)
		doTweenX('train','train',-1150,0.4,'sineOut')
		runTimer('trainCome4',0.4)
		end
		if t == 'trainCome4' then
		setProperty('train.x', 1150)
		doTweenX('train','train',-1150,0.4,'sineOut')
		runTimer('trainCome5',0.4)
		end
		if t == 'trainCome5' then
		setProperty('train.x', 1150)
		doTweenX('train','train',-1150,0.4,'sineOut')
		runTimer('trainCome6',0.4)
		end
		if t == 'trainCome6' then
		setProperty('train.x', 1150)
		doTweenX('train','train',-1150,0.4,'sineOut')
		runTimer('trainCome7',0.4)
		end
	if t == 'trainCome7' then
    triggerEvent('Play Animation','hairFall',2)
	doTweenX('train','train',-4000,0.5,'sineOut')
	runTimer('trainRide',1)

	end
	if t == 'trainRide' then
  
	setProperty('train.x', 2000)
	runTimer('trainsound',8)

	end
	if t == 'blueAppear' then
    setProperty('blue.visible', true);
    doTweenAlpha('blueAppearEventTween', 'blue', 1, 0.5, 'linear');
    runTimer('blueFade',0.7)
    end
	if t == 'blueFade' then
    doTweenAlpha('blueFadeEventTween', 'blue', 0, 0.5, 'linear');
     runTimer('greenAppear',0.8)
end
	if t == 'greenAppear' then
    setProperty('green.visible', true);
    doTweenAlpha('greenAppearEventTween', 'green', 1, 0.5, 'linear');
    runTimer('greenFade',0.7)
    end
	if t == 'greenFade' then
    doTweenAlpha('greenFadeEventTween', 'green', 0, 0.5, 'linear');
     runTimer('pinkAppear',0.8)
end
	if t == 'pinkAppear' then
    setProperty('pink.visible', true);
    doTweenAlpha('pinkAppearEventTween', 'pink', 1, 0.5, 'linear');
    runTimer('pinkFade',0.7)
    end
	if t == 'pinkFade' then
    doTweenAlpha('pinkFadeEventTween', 'pink', 0, 0.5, 'linear');
     runTimer('redAppear',0.8)
end
	if t == 'redAppear' then
    setProperty('red.visible', true);
    doTweenAlpha('redAppearEventTween', 'red', 1, 0.5, 'linear');
    runTimer('redFade',0.7)
    end
	if t == 'redFade' then
    doTweenAlpha('redFadeEventTween', 'red', 0, 0.5, 'linear');
     runTimer('yellowAppear',0.8)
end
	if t == 'yellowAppear' then
    setProperty('yellow.visible', true);
    doTweenAlpha('yellowAppearEventTween', 'yellow', 1, 0.5, 'linear');
    runTimer('yellowFade',0.7)
    end
	if t == 'yellowFade' then
    doTweenAlpha('yellowFadeEventTween', 'yellow', 0, 0.5, 'linear');
     runTimer('blueAppear',0.8)
end
end


function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
    if value1 == '1' then
	setProperty('blue.visible', true);
	  doTweenAlpha('blueAppearEventTween', 'blue', 1, 0.1, 'linear');
	setObjectOrder('blue', 10);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	end

   if value1 == '2' then
		   
	setProperty('blue.visible', false);
	setProperty('green.visible', true);
	 doTweenAlpha('greenAppearEventTween', 'green', 1, 0.1, 'linear');
	setObjectOrder('green', 10);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	end

    if value1 == '3' then

	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', true);
	 doTweenAlpha('pinkAppearEventTween', 'pink', 1, 0.1, 'linear');
	setObjectOrder('pink', 10);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
		setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('red', 6);
	end
	    if value1 == '4' then
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', true);
	setObjectOrder('red', 10);
 doTweenAlpha('redAppearEventTween', 'red', 1, 0.1, 'linear');
	setProperty('yellow.visible', false);
		setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);

	end
	if value1 == '5' then

	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', true);
 doTweenAlpha('yellowAppearEventTween', 'yellow', 1, 0.1, 'linear');
	setObjectOrder('blue', 3);
	setObjectOrder('yellow', 10);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	end
	if value1 == '0' then   
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	setObjectOrder('behindTrain', 8);
	setObjectOrder('train', 9);
	setObjectOrder('street', 10);
	end
	end
		if name == 'Play Animation' then 
		
		if value1 == '10' then
		 characterPlayAnim('gf', 'hairBlow', true);     
		end
		if value1 == '11' then
		 characterPlayAnim('gf', 'hairFall', false);     
		end
	end
	end
function onSongStart()
	objectPlayAnimation('Crowd2DARK','idle',true);
end