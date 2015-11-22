as yet unclassified
morphAtCross
	^ ((ActiveWorld morphsAt: eyePostionMorph center)
		reject: [:m |
			m = eyePostionMorph or:
				[m owner = eyePostionMorph]])
		ifEmpty: []
		ifNotEmptyDo: [:coll | coll first]