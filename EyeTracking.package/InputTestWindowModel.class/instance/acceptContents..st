accessing
acceptContents: aTextOrString
	| result input |
	input := aTextOrString asString asInteger.
	result := (Compiler evaluate: self taskText) = input.
	result
		ifTrue: [super acceptContents: input asString.
			self taskText: self taskText , ' "RICHTIG!"'.
			self changed: #taskText.
			self triggerEvent: #inputTestCorrect.
			(self window future: 1000) delete ]
		ifFalse: [super acceptContents: 'FALSCH!'].
	^ true
	