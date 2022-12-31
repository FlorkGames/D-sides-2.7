local cum = 0
function onCreate()
	makeLuaSprite('cum1','cum1',-200,-200)
	setScrollFactor('cum1',0,0)
	setObjectCamera('cum1','camOther')
	addLuaSprite('cum1',true)
	setProperty('cum1.alpha',0)

	makeLuaSprite('cum2','cum2',-200,-200)
	setScrollFactor('cum2',0,0)
	setObjectCamera('cum2','camOther')
	addLuaSprite('cum2',true)
	setProperty('cum2.alpha',0)

	makeLuaSprite('cum3','cum3',-200,-200)
	setScrollFactor('cum3',0,0)
	setObjectCamera('cum3','camOther')
	addLuaSprite('cum3',true)
	setProperty('cum3.alpha',0)
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Cum Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Cum Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'GUMNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'gumsplash')
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0.0475'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
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
	if noteType == 'Cum Note' then
		-- put something here if you want
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Cum Note' then
		-- put something here if you want
		cum = cum + 1
		playSound('splurge')
		if cum == 1 then
			cancelTimer('cum disappearance')
			runTimer('cum disappearance',2,1)
		end
		if cum == 2 then
			cancelTimer('cum disappearance')
			runTimer('cum disappearance',2,2)
		end
		if cum == 3 then
			cancelTimer('cum disappearance')
			runTimer('cum disappearance',2,3)
		end
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'cum disappearance' then
		cum = cum - 1
	end
end
function onUpdate(elapsed)
	if cum < 0 then
		cum = 0
	end
	if cum == 0 then
		doTweenAlpha('cum1 disappeare','cum1',0,0.1,'quadInOut')
		doTweenAlpha('cum2 disappeare','cum2',0,0.1,'quadInOut')
		doTweenAlpha('cum3 disappeare','cum3',0,0.1,'quadInOut')

		setPropertyFromGroup('cum1.scale','y',2)
		setPropertyFromGroup('cum2.scale','y',2)
		setPropertyFromGroup('cum3.scale','y',2)
	end
	if cum == 1 then
		cancelTween('cum1 disappeare')

		setProperty('cum1.alpha',1)
		doTweenAlpha('cum2 disappeare','cum2',0,0.1,'quadInOut')
		doTweenAlpha('cum3 disappeare','cum3',0,0.1,'quadInOut')

		setPropertyFromGroup('cum1.scale','y',1)
		setPropertyFromGroup('cum2.scale','y',2)
		setPropertyFromGroup('cum3.scale','y',2)
	end
	if cum == 2 then
		cancelTween('cum1 disappeare')
		cancelTween('cum2 disappeare')

		setProperty('cum1.alpha',1)
		setProperty('cum2.alpha',1)
		doTweenAlpha('cum3 disappeare','cum3',0,0.1,'quadInOut')

		setPropertyFromGroup('cum1.scale','y',1)
		setPropertyFromGroup('cum2.scale','y',1)
		setPropertyFromGroup('cum3.scale','y',2)
	end
	if cum == 3 then
		cancelTween('cum1 disappeare')
		cancelTween('cum2 disappeare')
		cancelTween('cum3 disappeare')

		setProperty('cum1.alpha',1)
		setProperty('cum2.alpha',1)
		setProperty('cum3.alpha',1)

		setPropertyFromGroup('cum1.scale','y',1)
		setPropertyFromGroup('cum2.scale','y',1)
		setPropertyFromGroup('cum3.scale','y',1)
	end
	if cum > 3 then
		cum = 3
	end
end