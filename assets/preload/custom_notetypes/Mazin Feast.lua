function onCreate()
precacheImage('characters/feast/GodFeastMazinAssets')
addCharacterToList('feast-mazin','dad')
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Mazin Feast' then
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
	if noteType == 'Mazin Feast' then
		triggerEvent('Change Character','dad','feast-mazin')
		setProperty('dadGroup.x',260)
		setProperty('dadGroup.y',-190)
		setObjectOrder('dadGroup',4)
		setProperty('mazin.visible',false)
		setProperty('X.visible',true)
		setProperty('sonic.visible',true)
	end
end