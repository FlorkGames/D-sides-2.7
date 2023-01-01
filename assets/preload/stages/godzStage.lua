function onCreate()
--mighty
	makeLuaSprite('segasonicz_sky','boners/godz/mighty/segasonicz_sky',0,0)
	setScrollFactor('segasonicz_sky',0.86,0.86)
	addLuaSprite('segasonicz_sky',false)

	makeLuaSprite('segasonicz_wall','boners/godz/mighty/segasonicz_wall',0,0)
	setScrollFactor('segasonicz_wall',0.88,0.88)
	addLuaSprite('segasonicz_wall',false)

	makeLuaSprite('segasonicz_machine','boners/godz/mighty/segasonicz_machine',0,0)
	setScrollFactor('segasonicz_machine',0.9,0.9)
	addLuaSprite('segasonicz_machine',false)

	makeLuaSprite('segasonicz_platform','boners/godz/mighty/segasonicz_platform',0,0)
	setScrollFactor('segasonicz_platform',1,1)
	addLuaSprite('segasonicz_platform',false)
	scaleObject('segasonicz_platform', 5.0, 5.0);
--ristar
	makeLuaSprite('ristarzsky','boners/godz/riztar/ristarzsky',0,20)
	setScrollFactor('ristarzsky',0.7,0.7)
	addLuaSprite('ristarzsky',false)
	setProperty('ristarzsky.visible',false)
	scaleObject('ristarzsky', 5.0, 5.0);

	makeLuaSprite('ristarzmountains','boners/godz/riztar/ristarzmountains',0,20)
	setScrollFactor('ristarzmountains',0.7,0.7)
	addLuaSprite('ristarzmountains',false)
	setProperty('ristarzmountains.visible',false)
	scaleObject('ristarzmountains', 5.0, 5.0);

	makeLuaSprite('ristarzfartrees','boners/godz/riztar/ristarzfartrees',0,800)
	setScrollFactor('ristarzfartrees',0.85,0.85)
	addLuaSprite('ristarzfartrees',false)
	setProperty('ristarzfartrees.visible',false)
	scaleObject('ristarzfartrees', 5.0, 5.0);

	makeLuaSprite('ristarzplants','boners/godz/riztar/ristarzplants',0,20)
	setScrollFactor('ristarzplants',0.9,0.9)
	addLuaSprite('ristarzplants',false)
	setProperty('ristarzplants.visible',false)
	scaleObject('ristarzplants', 5.0, 5.0);

	makeLuaSprite('ristarzplatform','boners/godz/riztar/ristarzplatform',0,800)
	setScrollFactor('ristarzplatform',1,1)
	addLuaSprite('ristarzplatform',false)
	setProperty('ristarzplatform.visible',false)
	scaleObject('ristarzplatform', 5.0, 5.0);

	makeLuaSprite('ristarzfrontplants','boners/godz/riztar/ristarzfrontplants',0,1000)
	setScrollFactor('ristarzfrontplants',1.1,1.1)
	addLuaSprite('ristarzfrontplants',true)
	setProperty('ristarzfrontplants.visible',false)
--vectorman
	makeLuaSprite('vectorback','boners/godz/vector/vectorback',0,0)
	setScrollFactor('vectorback',0.9,0.9)
	addLuaSprite('vectorback',false)
	setProperty('vectorback.visible',false)

	makeLuaSprite('vectortreeback','boners/godz/vector/vectortreeback',0,0)
	setScrollFactor('vectortreeback',0.9,0.9)
	addLuaSprite('vectortreeback',false)
	setProperty('vectortreeback.visible',false)

	makeLuaSprite('vectorsecondtrees','boners/godz/vector/vectorsecondtrees',0,0)
	setScrollFactor('vectorsecondtrees',0.95,0.95)
	addLuaSprite('vectorsecondtrees',false)
	setProperty('vectorsecondtrees.visible',false)

	makeLuaSprite('vectorstage','boners/godz/vector/vectorstage',0,0)
	setScrollFactor('vectorstage',1,1)
	addLuaSprite('vectorstage',false)
	setProperty('vectorstage.visible',false)
	scaleObject('vectorstage', 5.0, 5.0);

	makeLuaSprite('vectorfront','boners/godz/vector/vectorfront',0,0)
	setScrollFactor('vectorfront',1.1,1.1)
	addLuaSprite('vectorfront',true)
	setProperty('vectorfront.visible',false)
--alex
	makeLuaSprite('castlesky','boners/godz/alex/castlesky',-725,-375)
	setScrollFactor('castlesky',0.5,0.5)
	addLuaSprite('castlesky',false)
	setProperty('castlesky.visible',false)

	makeLuaSprite('castle','boners/godz/alex/castle',0,0)
	setScrollFactor('castle',1,1)
	addLuaSprite('castle',false)
	setProperty('castle.visible',false)
	scaleObject('castle', 5.0, 5.0);
end