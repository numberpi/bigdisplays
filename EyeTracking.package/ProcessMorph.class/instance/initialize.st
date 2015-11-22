as yet unclassified
initialize
	super initialize.
	self target: self.
	self actionSelector: #onClick.
	eyePostionMorph := CrossMorph new openInWorld.
	self label: 'Start/stop process'.
	self initializeCalibrationMorphs.