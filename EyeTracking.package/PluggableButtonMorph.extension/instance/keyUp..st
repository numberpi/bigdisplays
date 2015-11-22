*EyeTracking
keyUp: evt
	
	evt keyCharacter = Character cr
		ifTrue: [ self performAction ]