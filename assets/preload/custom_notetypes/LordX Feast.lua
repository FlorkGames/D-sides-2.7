function onCreate()
precacheImage('characters/feast/GodFeastLordXAssets')
addCharacterToList('feast-x','dad')
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'LordX Feast' then
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss',false);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote',false); --Miss has no penalties
			end
		end
	end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'LordX Feast' then
		triggerEvent('Change Character','dad','feast-x')
		setProperty('dadGroup.x',-350)
		setProperty('dadGroup.y',-130)
		setObjectOrder('dadGroup',5)
		setProperty('mazin.visible',true)
		setProperty('X.visible',false)
		setProperty('sonic.visible',true)
	end
end