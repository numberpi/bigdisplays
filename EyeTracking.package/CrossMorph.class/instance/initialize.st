as yet unclassified
initialize
	super initialize.
	self extent: 50@5.
	self color: (Color green alpha: 0.7).
	self borderWidth: 1.
	self borderColor: (Color black alpha: 0.5).
	self addMorph: (Morph new
		extent: (self extent y)@(self extent x);
		center: self center;
		color: (Color green alpha: 0.7);
		borderWidth: self borderWidth;
		borderColor: self borderColor)