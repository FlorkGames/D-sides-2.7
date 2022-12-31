function onCreate()
precacheImage('characters/feast/GodFeastSonicEXESheet')
addCharacterToList('feast-exe','dad')
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Xeno Feast' then
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
	if noteType == 'Xeno Feast' then
		triggerEvent('Change Character','dad','feast-exe')
		setProperty('dadGroup.x',-455)
		setProperty('dadGroup.y',33)
		setObjectOrder('dadGroup',6)
		setProperty('mazin.visible',true)
		setProperty('X.visible',true)
		setProperty('sonic.visible',false)
	end
end