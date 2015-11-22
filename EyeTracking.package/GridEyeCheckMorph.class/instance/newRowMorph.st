as yet unclassified
newRowMorph
	| m |
	m := Morph new
		color: (Color blue alpha: 0);
		layoutPolicy: TableLayout new;
	  			listDirection: #leftToRight;
			wrapCentering: #center;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			layoutInset: 0;
			cellInset: 10;
			rubberBandCells: false.
	1 to: 10 do: [:i |
		m addMorph: (Morph new
				extent: (self extent x / 10)@(self extent y / 10);
				color: (Color blue alpha: 0.7))].
	^ m