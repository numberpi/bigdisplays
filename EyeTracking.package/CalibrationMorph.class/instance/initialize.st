as yet unclassified
initialize
	super initialize.
	self target: self.
	self actionSelector: #onClick.
	"step := 1.
	self updateLabel."