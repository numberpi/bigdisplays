as yet unclassified
initialize
	super initialize.
	self layoutPolicy: TableLayout new;
	  listDirection: #topToBottom;
	  wrapCentering: #topLeft;
	  hResizing: #spaceFill;
	  vResizing: #spaceFill;
	  layoutInset: 2;
		cellInset: 10;
	  rubberBandCells: false.
	self extent: ActiveWorld extent.
	self color: (Color blue alpha: 0.3).
	self addNumberedRects.