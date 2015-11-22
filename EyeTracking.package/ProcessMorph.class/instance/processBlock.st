as yet unclassified
processBlock
	| millisecondsSinceLastChange |
	^ [ | morphAtCross |
		cameraPosition := self parseInput: self readLineFromStdIn.
		eyePostionMorph
			position: (self scaleEyeMorphPosition: cameraPosition);
			comeToFront.
		morphAtCross := self morphAtCross.
		millisecondsSinceLastChange := eyePostionMorph updateTarget: morphAtCross.
		millisecondsSinceLastChange > 1000
			ifTrue: [morphAtCross
					ifNotNil: [ ActiveHand newKeyboardFocus: morphAtCross.
						eyePostionMorph resetTimer.. ]].
		millisecondsSinceLastChange > 1500
			ifTrue: [morphAtCross
					ifNotNil: [ (morphAtCross isKindOf: PluggableButtonMorph)
						ifTrue: [ eyePostionMorph resetTimer.
							"morphAtCross performAction" ] ]]
		"Transcript showln: morphAtCross "]
