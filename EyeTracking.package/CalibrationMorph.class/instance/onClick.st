as yet unclassified
onClick
	| input integers  |
	FileStream stdin setToEnd.
	input := FileStream stdin upToAnyOf: {Character cr} do: [:char | ].
	Transcript showln: input.
	integers := (input findTokens: ';') collect: [:a | a asInteger ].
	integers size = 2 ifTrue: [ | position |
		position := (integers first) @ (integers second).
"		position := (640@480) - position."
		position := (640 - position x)@(position y).
		self class calibration at: step put: position.
		step := (step rem: 4) + 1.
		self updateLabel.
		Transcript showln: self label , ': ' , position asString.
		Transcript showln: self class calibration.
		CrossMorph new position: position; openInWorld.]