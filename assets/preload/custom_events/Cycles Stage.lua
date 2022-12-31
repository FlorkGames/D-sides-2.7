function onEvent(n,v1,v2)
	if n == 'Cycles Stage' and v1 == 'ristar' then
		setProperty('segasonicz_sky.visible',false)
		setProperty('segasonicz_wall.visible',false)
		setProperty('segasonicz_machine.visible',false)
		setProperty('segasonicz_platform.visible',false)

		setProperty('ristarzsky.visible',true)
		setProperty('ristarzmountains.visible',true)
		setProperty('ristarzfartrees.visible',true)
		setProperty('ristarzplants.visible',true)
		setProperty('ristarzplatform.visible',true)
		setProperty('ristarzfrontplants.visible',true)
	end
	if n == 'Cycles Stage' and v1 == 'vectorman' then
		setProperty('ristarzsky.visible',false)
		setProperty('ristarzmountains.visible',false)
		setProperty('ristarzfartrees.visible',false)
		setProperty('ristarzplants.visible',false)
		setProperty('ristarzplatform.visible',false)
		setProperty('ristarzfrontplants.visible',false)

		setProperty('vectorback.visible',true)
		setProperty('vectortreeback.visible',true)
		setProperty('vectorsecondtrees.visible',true)
		setProperty('vectorstage.visible',true)
		setProperty('vectorfront.visible',true)
	end
	if n == 'Cycles Stage' and v1 == 'alex' then
		setProperty('vectorback.visible',false)
		setProperty('vectortreeback.visible',false)
		setProperty('vectorsecondtrees.visible',false)
		setProperty('vectorstage.visible',false)
		setProperty('vectorfront.visible',false)

		setProperty('castlesky.visible',true)
		setProperty('castle.visible',true)
	end
	if n == 'Cycles Stage' and v1 == '' then
		setProperty('castlesky.visible',false)
		setProperty('castle.visible',false)
		setProperty('boyfriend.visible',false)
	end
end