local bruhIdles = 'yes'
local playIdles = 'yes'
function onCreate()
	makeLuaSprite('GODFEAST','boners/FEAST/GODFEAST',-1000,-700)
	addLuaSprite('GODFEAST',false)-----------------------------------------------------------1
	scaleObject('GODFEAST', 5.0, 5.0);

	makeAnimatedLuaSprite('SunkyandMitte','boners/FEAST/GodFeastSunkyandMitteSheet',150,-100)
	addLuaSprite('SunkyandMitte',false)------------------------------------------------------2
	addAnimationByPrefix('SunkyandMitte','idle','sunkyiandmitee',24,false)
	scaleObject('SunkyandMitte', 2.0, 2.0);

	makeLuaSprite('GodFeastTable','boners/FEAST/GodFeastTable',-559,58)
	addLuaSprite('GodFeastTable',false)------------------------------------------------------3
	scaleObject('GodFeastTable', 2.0, 2.0);

	makeAnimatedLuaSprite('mazin','characters/feast/GodFeastMazinAssets',-40,-189)
	addLuaSprite('mazin',false)--------------------------------------------------------------[4]!
	addAnimationByPrefix('mazin','idle','mazinidle',24,false)
	addAnimationByPrefix('mazin','0','mazinleft',24,false)
	addAnimationByPrefix('mazin','1','mazindown',24,false)
	addAnimationByPrefix('mazin','2','mazinup',24,false)
	addAnimationByPrefix('mazin','3','mazinright',24,false)
	scaleObject('mazin', 2.0, 2.0);

	makeAnimatedLuaSprite('X','characters/feast/GodFeastLordXAssets',-450,-130)
	addLuaSprite('X',false)---------------------------------------------------------------[5]!
	addAnimationByPrefix('X','idle','lordxidle',24,false)
	addAnimationByPrefix('X','0','lordxleft',24,false)
	addAnimationByPrefix('X','1','lordxdown',24,false)
	addAnimationByPrefix('X','2','lordxup',24,false)
	addAnimationByPrefix('X','3','lordxright',24,false)
	scaleObject('X', 2.0, 2.0);

	makeAnimatedLuaSprite('sonic','characters/feast/GodFeastSonicEXESheet',-555,34)
	addLuaSprite('sonic',false)----------------------------------------------------------[6]!
	addAnimationByPrefix('sonic','idle','SonicexeIdle',24,false)
	addAnimationByPrefix('sonic','0','SonicexeLeft',24,false)
	addAnimationByPrefix('sonic','1','sonicexedown',24,false)
	addAnimationByPrefix('sonic','2','sonicexeup',24,false)
	addAnimationByPrefix('sonic','3','Sonic.exeRight',24,false)
	scaleObject('sonic', 2.0, 2.0);

	makeAnimatedLuaSprite('tenma','characters/feast/GodFeastTenmaSheet',637,-25)
	addLuaSprite('tenma',false)--------------------------------------------------------------[7]!
	addAnimationByPrefix('tenma','idle','tenmaidle',24,false)
	addAnimationByPrefix('tenma','0','tenmaleft',24,false)
	addAnimationByPrefix('tenma','1','tenmadown0',24,false)
	addAnimationByPrefix('tenma','2','tenmaup',24,false)
	addAnimationByPrefix('tenma','3','tenmaright',24,false)
	scaleObject('tenma', 2.0, 2.0);

	makeAnimatedLuaSprite('GodZ','characters/feast/GodFeastGodZSheet',680,-272)
	addLuaSprite('GodZ',false)---------------------------------------------------------------[8]!
	addAnimationByPrefix('GodZ','idle','godzidle',24,false)
	addAnimationByPrefix('GodZ','0','godzleft0',24,false)
	addAnimationByPrefix('GodZ','1','godzdown0',24,false)
	addAnimationByPrefix('GodZ','2','godzup0',24,false)
	addAnimationByPrefix('GodZ','3','godzright0',24,false)
	scaleObject('GodZ', 2.0, 2.0);

	makeAnimatedLuaSprite('MightyZIP','characters/feast/GodFeastMightyZIPSheet',913,71)
	addLuaSprite('MightyZIP',false)----------------------------------------------------------[9]!
	addAnimationByPrefix('MightyZIP','idle','mighty.zipidle',24,false)
	addAnimationByPrefix('MightyZIP','0','MightyZipLeft',24,false)
	addAnimationByPrefix('MightyZIP','1','mightyzipdown',24,false)
	addAnimationByPrefix('MightyZIP','2','MightyZipup',24,false)
	addAnimationByPrefix('MightyZIP','3','mightyzipright',24,false)
	scaleObject('MightyZIP', 2.0, 2.0);

	makeAnimatedLuaSprite('fleetway','boners/FEAST/GodFeastFleetwaySuperAssets',-1000,-100)
	addLuaSprite('fleetway',true)------------------------------------------------------------10
	addAnimationByPrefix('fleetway','idle','fleetwaysuper',24,false)
	setScrollFactor('fleetway',0.5,0.5)
	scaleObject('fleetway', 2.0, 2.0);

	makeAnimatedLuaSprite('scourge','boners/FEAST/GodFeastScourgeSheet',1350,-400)
	addLuaSprite('scourge',true)-------------------------------------------------------------11
	addAnimationByPrefix('scourge','idle','scourge',24,false)
	setScrollFactor('scourge',0.5,0.5)
	scaleObject('scourge', 2.0, 2.0);

	setProperty('MightyZIP.visible',false)
	setProperty('sonic.visible',false)
	setObjectOrder('boyfriendGroup',9)
end
function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('SunkyandMitte','idle',false)
		objectPlayAnimation('fleetway','idle',false)
		objectPlayAnimation('scourge','idle',false)
	end
	if curBeat % 2 == 0 and bruhIdles == 'yes' then
		setProperty('mazin.x',-40)
		setProperty('mazin.y',-189)
		setProperty('X.x',-450)
		setProperty('X.y',-130)
		setProperty('sonic.x',-555)
		setProperty('sonic.y',34)
		objectPlayAnimation('mazin','idle',false)
		objectPlayAnimation('X','idle',false)
		objectPlayAnimation('sonic','idle',false)
	end
	if curBeat % 2 == 0 and playIdles == 'yes' then
		setProperty('tenma.x',637)
		setProperty('tenma.y',-25)
		setProperty('GodZ.x',680)
		setProperty('GodZ.y',-272)
		setProperty('MightyZIP.x',913)
		setProperty('MightyZIP.y',71)
		objectPlayAnimation('tenma','idle',false)
		objectPlayAnimation('GodZ','idle',false)
		objectPlayAnimation('MightyZIP','idle',false)
	end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == '' then
		setProperty('mazin.visible',true)
		setProperty('X.visible',true)
		setProperty('sonic.visible',true)
		setProperty('dad.visible',false)
	else
		setProperty('dad.visible',true)
	end
	if noteType == '' and direction == 0 then
		bruhIdles = 'no'
		setProperty('mazin.x',-106)
		setProperty('mazin.y',-182)
		setProperty('X.x',-471)
		setProperty('X.y',-169)
		setProperty('sonic.x',-549)
		setProperty('sonic.y',36)
		objectPlayAnimation('mazin','0',true)
		objectPlayAnimation('X','0',true)
		objectPlayAnimation('sonic','0',true)
	else
		bruhIdles = 'yes'
	end
	if noteType == '' and direction == 1 then
		bruhIdles = 'no'
		setProperty('mazin.x',-48)
		setProperty('mazin.y',-165)
		setProperty('X.x',-436)
		setProperty('X.y',-104)
		setProperty('sonic.x',-546)
		setProperty('sonic.y',71)
		objectPlayAnimation('mazin','1',true)
		objectPlayAnimation('X','1',true)
		objectPlayAnimation('sonic','1',true)
	else
		bruhIdles = 'yes'
	end
	if noteType == '' and direction == 2 then
		bruhIdles = 'no'
		setProperty('mazin.x',-56)
		setProperty('mazin.y',-208)
		setProperty('X.x',-449)
		setProperty('X.y',-177)
		setProperty('sonic.x',-592)
		setProperty('sonic.y',13)
		objectPlayAnimation('mazin','2',true)
		objectPlayAnimation('X','2',true)
		objectPlayAnimation('sonic','2',true)
	else
		bruhIdles = 'yes'
	end
	if noteType == '' and direction == 3 then
		bruhIdles = 'no'
		setProperty('mazin.x',-4)
		setProperty('mazin.y',-175)
		setProperty('X.x',-416)
		setProperty('X.y',-108)
		setProperty('sonic.x',-532)
		setProperty('sonic.y',47)
		objectPlayAnimation('mazin','3',true)
		objectPlayAnimation('X','3',true)
		objectPlayAnimation('sonic','3',true)
	else
		bruhIdles = 'yes'
	end
end
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == '' then
		setProperty('tenma.visible',true)
		setProperty('GodZ.visible',true)
		setProperty('MightyZIP.visible',true)
		setProperty('boyfriend.visible',false)
	else
		setProperty('boyfriend.visible',true)
	end
	if noteType == '' and direction == 0 then
		playIdles = 'no'
		setProperty('tenma.x',579)
		setProperty('tenma.y',-24)
		setProperty('GodZ.x',577)
		setProperty('GodZ.y',-263)
		setProperty('MightyZIP.x',913)
		setProperty('MightyZIP.y',61)
		objectPlayAnimation('tenma','0',true)
		objectPlayAnimation('GodZ','0',true)
		objectPlayAnimation('MightyZIP','0',true)
	else
		playIdles = 'yes'
	end
	if noteType == '' and direction == 1 then
		playIdles = 'no'
		setProperty('tenma.x',644)
		setProperty('tenma.y',-13)
		setProperty('GodZ.x',677)
		setProperty('GodZ.y',-277)
		setProperty('MightyZIP.x',913)
		setProperty('MightyZIP.y',91)
		objectPlayAnimation('tenma','1',true)
		objectPlayAnimation('GodZ','1',true)
		objectPlayAnimation('MightyZIP','1',true)
	else
		playIdles = 'yes'
	end
	if noteType == '' and direction == 2 then
		playIdles = 'no'
		setProperty('tenma.x',651)
		setProperty('tenma.y',-41)
		setProperty('GodZ.x',729)
		setProperty('GodZ.y',-317)
		setProperty('MightyZIP.x',913)
		setProperty('MightyZIP.y',11)
		objectPlayAnimation('tenma','2',true)
		objectPlayAnimation('GodZ','2',true)
		objectPlayAnimation('MightyZIP','2',true)
	else
		playIdles = 'yes'
	end
	if noteType == '' and direction == 3 then
		playIdles = 'no'
		setProperty('tenma.x',652)
		setProperty('tenma.y',-25)
		setProperty('GodZ.x',735)
		setProperty('GodZ.y',-281)
		setProperty('MightyZIP.x',913)
		setProperty('MightyZIP.y',71)
		objectPlayAnimation('tenma','3',true)
		objectPlayAnimation('GodZ','3',true)
		objectPlayAnimation('MightyZIP','3',true)
	else
		playIdles = 'yes'
	end
end