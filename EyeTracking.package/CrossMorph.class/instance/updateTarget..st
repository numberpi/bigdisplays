as yet unclassified
updateTarget: aNewTarget
	self newTarget: aNewTarget.
	aNewTarget ~= self lastTarget
		ifTrue: [
			Transcript showln: aNewTarget; showln: (Time millisecondsSince: self lastTargetChangeTime).
			self resetTimer ].
	self lastTarget: self newTarget.
	^ Time millisecondsSince: self lastTargetChangeTime