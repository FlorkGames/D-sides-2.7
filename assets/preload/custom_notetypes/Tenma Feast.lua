function onCreate()
precacheImage('characters/feast/GodFeastTenmaGameOverSheet')
precacheImage('characters/feast/GodFeastTenmaSheet')
addCharacterToList('feast-tenma','boyfriend')
addCharacterToList('feast-tenma-dead','boyfriend')
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Tenma Feast
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Tenma Feast' then
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss',false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote',false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Tenma Feast' then
		triggerEvent('Change Character','bf','feast-tenma')
		setPropertyFromClass('GameOverSubstate', 'characterName', 'feast-tenma-dead')
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', '')
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'loop-tenma')
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'end-feast')
		setProperty('boyfriendGroup.x',652)
		setProperty('boyfriendGroup.y',-24)
		setProperty('tenma.visible',false)
		setProperty('GodZ.visible',true)
		setProperty('MightyZIP.visible',true)
		setObjectOrder('boyfriendGroup',7)
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Tenma Feast' then
		triggerEvent('Change Character','bf','feast-tenma')
		setPropertyFromClass('GameOverSubstate', 'characterName', 'feast-tenma-dead')
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', '')
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'loop-tenma')
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'end-feast')
		setProperty('boyfriendGroup.x',652)
		setProperty('boyfriendGroup.y',-24)
		setProperty('tenma.visible',false)
		setProperty('GodZ.visible',true)
		setProperty('MightyZIP.visible',true)
		setObjectOrder('boyfriendGroup',7)
	end
end