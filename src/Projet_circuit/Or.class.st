"
Sous classe de composant définissant le comportement de la porte OR
"
Class {
	#name : 'Or',
	#superclass : 'Porte2Entrees',
	#instVars : [
		'etat',
		'inY1',
		'inY2',
		'outY',
		'currentX',
		'currentY',
		'frameSize',
		'image',
		'ligne1',
		'ligne2'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'as yet unclassified' }
Or >> actualisationCouleur [
	(entree1 etat value) ifTrue: [ ligne1 border: (BlBorder paint: Color green width: 3). ] ifFalse: [ ligne1 border: (BlBorder paint: Color red width: 3). ].
	(entree2 etat value) ifTrue: [ ligne2 border: (BlBorder paint: Color green width: 3). ] ifFalse: [ ligne2 border: (BlBorder paint: Color red width: 3). ].
]

{ #category : 'accessing' }
Or >> currentX [

	^ currentX
]

{ #category : 'accessing' }
Or >> currentX: anObject [

	currentX := anObject
]

{ #category : 'accessing' }
Or >> currentY [

	^ currentY
]

{ #category : 'accessing' }
Or >> currentY: anObject [

	currentY := anObject
]

{ #category : 'accessing' }
Or >> description [ 
	^ self class name, ' id :', self id printString.
]

{ #category : 'accessing' }
Or >> etat [
    self assert: entree1 notNil description: 'Entrée 1 non connectée'.
    self assert: entree2 notNil description: 'Entrée 2 non connectée'.
	 self actualisationCouleur.
    ^ (entree1 etat value) | (entree2 etat value).


]

{ #category : 'accessing' }
Or >> etat1 [

	^ etat
]

{ #category : 'accessing' }
Or >> etat: anObject [

	etat := anObject
]

{ #category : 'public access' }
Or >> evaluate [ 
^ entree1 evaluate or: entree2 evaluate.
]

{ #category : 'accessing' }
Or >> frameSize [

	^ frameSize
]

{ #category : 'accessing' }
Or >> frameSize: anObject [

	frameSize := anObject
]

{ #category : 'accessing' }
Or >> image [

	^ image
]

{ #category : 'accessing' }
Or >> image: anObject [

	image := anObject
]

{ #category : 'accessing' }
Or >> inY1 [

	^ inY1
]

{ #category : 'accessing' }
Or >> inY1: anObject [

	inY1 := anObject
]

{ #category : 'accessing' }
Or >> inY2 [

	^ inY2
]

{ #category : 'accessing' }
Or >> inY2: anObject [

	inY2 := anObject
]

{ #category : 'accessing' }
Or >> initialize [ 
	|imageFromFile|
	super initialize.
	imageFromFile := Form fromFileNamed: 'or.png'.
	image := BlElement new
		background: imageFromFile;
		size: 100 @ 120.
	frameSize:=100@120.
	inY1:=22.7.
	inY2:=55.5.
	outY:=39.3.
	currentX:=0.
	currentY:=0.
	Composant dernierComposant: self.
	^ self.
]

{ #category : 'accessing' }
Or >> ligne1 [

	^ ligne1
]

{ #category : 'accessing' }
Or >> ligne1: anObject [

	ligne1 := anObject
]

{ #category : 'accessing' }
Or >> ligne2 [

	^ ligne2
]

{ #category : 'accessing' }
Or >> ligne2: anObject [

	ligne2 := anObject
]

{ #category : 'accessing' }
Or >> linkTo: aComposant by: In [
    (In = inY1) ifTrue: [
        self entree1: aComposant.
        ligne1 := BlElement new.
        ligne1 geometry: (BlLineGeometry 
            from: (self currentX @ (self currentY + In))
            to: ((aComposant currentX + aComposant frameSize x) @ (aComposant currentY + aComposant outY))).
		(entree1 etat value) ifTrue: [ ligne1 border: (BlBorder paint: Color green width: 3). ] ifFalse: [ ligne1 border: (BlBorder paint: Color red width: 3). ]       
    ].

    (In = inY2) ifTrue: [
        self entree2: aComposant.
        ligne2 := BlElement new.
        ligne2 geometry: (BlLineGeometry 
            from: (self currentX @ (self currentY + In))
            to: ((aComposant currentX + aComposant frameSize x) @ (aComposant currentY + aComposant outY))).
        (entree2 etat value) ifTrue: [ ligne2 border: (BlBorder paint: Color green width: 3). ] ifFalse: [ ligne2 border: (BlBorder paint: Color red width: 3). ]
    ].
	aComposant sortie: self.
	^ self.
]

{ #category : 'accessing' }
Or >> outY [

	^ outY
]

{ #category : 'accessing' }
Or >> outY: anObject [

	outY := anObject
]

{ #category : 'initialization' }
Or >> setPos: x y: y [
	image position: x@y.
	currentX := x.
	currentY := y.

]
