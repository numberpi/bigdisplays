as yet unclassified
onClick
	process ifNotNil: [
		process terminate.
		topLeftMorph delete.
		bottomRightMorph delete.
		process := nil]
	ifNil: [
		process := self endlessProcessBlock newProcess.
		process priority: 20.
		self initializeCalibrationMorphs.
		process resume ]
	