local rightIce = 'false'
local iceShit = 'false'
local allowPress = 'true'
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Ice Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Ice Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'ICENOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'ICEnoteSplashes')
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
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
	if noteType == 'Ice Note' then
		-- put something here if you want
	end
end
-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Ice Note' then
		-- put something here if you want
		cancelTimer('iceGone')
		if iceShit == 'false' then
			iceShit = 'true'
		end
	end
end
function onUpdate(elapsed)
	if iceShit == 'false' then
		setProperty('snowgrave.visible',false)
		setProperty('boyfriend.visible',true)
		setProperty('boyfriend.stunned',false)
	end
	if iceShit == 'true' then
		setProperty('snowgrave.visible',true)
		setProperty('boyfriend.visible',false)
		setProperty('boyfriend.stunned',true)
		objectPlayAnimation('snowgrave','idle',false)
	end
	if keyJustPressed('left') and rightIce == 'false' then
		rightIce = 'true'
		if iceShit == '4' and allowPress == 'true' then
			playSound('Freeze',1)
			objectPlayAnimation('snowgrave','4',true)
			setProperty('boyfriend.stunned',false)
			allowPress = 'false'
			runTimer('allowPress',0.15,1)
			runTimer('iceGone',0.2916666666666667,1)
		end
		if iceShit == '3' and allowPress == 'true' then
			playSound('Freeze',1)
			objectPlayAnimation('snowgrave','3',true)
			iceShit = '4'
			allowPress = 'false'
			runTimer('allowPress',0.15,1)
		end
		if iceShit == '2' and allowPress == 'true' then
			playSound('Freeze',1)
			objectPlayAnimation('snowgrave','2',true)
			iceShit = '3'
			allowPress = 'false'
			runTimer('allowPress',0.15,1)
		end
		if iceShit == 'true' and allowPress == 'true' then
			playSound('Freeze',1)
			objectPlayAnimation('snowgrave','1',true)
			iceShit = '2'
			allowPress = 'false'
			runTimer('allowPress',0.15,1)
		end
	end
	if keyJustPressed('right') and rightIce == 'true' then
		rightIce = 'false'
		if iceShit == '4' and allowPress == 'true' then
			playSound('Freeze',1)
			objectPlayAnimation('snowgrave','4',true)
			setProperty('boyfriend.stunned',false)
			allowPress = 'false'
			runTimer('allowPress',0.15,1)
			runTimer('iceGone',0.2916666666666667,1)
		end
		if iceShit == '3' and allowPress == 'true' then
			playSound('Freeze',1)
			objectPlayAnimation('snowgrave','3',true)
			iceShit = '4'
			allowPress = 'false'
			runTimer('allowPress',0.15,1)
		end
		if iceShit == '2' and allowPress == 'true' then
			playSound('Freeze',1)
			objectPlayAnimation('snowgrave','2',true)
			iceShit = '3'
			allowPress = 'false'
			runTimer('allowPress',0.15,1)
		end
		if iceShit == 'true' and allowPress == 'true' then
			playSound('Freeze',1)
			objectPlayAnimation('snowgrave','1',true)
			iceShit = '2'
			allowPress = 'false'
			runTimer('allowPress',0.15,1)
		end
	end
end
function onTimerCompleted(tag)
	if tag == 'iceGone' then
	playSound('Freeze',1)
		iceShit = 'false'
	end
	if tag == 'allowPress' then
		allowPress = 'true'
	end
end