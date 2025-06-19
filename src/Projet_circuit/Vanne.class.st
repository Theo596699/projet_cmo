"
Sous classe de composant définissant le comportement de la vanne
"
Class {
	#name : 'Vanne',
	#superclass : 'Composant',
	#instVars : [
		'entree',
		'etat',
		'inY',
		'currentX',
		'currentY',
		'frameSize',
		'image',
		'ligne'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'as yet unclassified' }
Vanne >> actualisationCouleur [
	(entree etat value) ifTrue: [ ligne border: (BlBorder paint: Color green width: 3). ] ifFalse: [ ligne border: (BlBorder paint: Color red width: 3). ].
]

{ #category : 'accessing' }
Vanne >> currentX [

	^ currentX
]

{ #category : 'accessing' }
Vanne >> currentX: anObject [

	currentX := anObject
]

{ #category : 'accessing' }
Vanne >> currentY [

	^ currentY
]

{ #category : 'accessing' }
Vanne >> currentY: anObject [

	currentY := anObject
]

{ #category : 'accessing' }
Vanne >> description [ 
	^ self class name, ' id :', self id printString.
]

{ #category : 'accessing' }
Vanne >> entree [

	^ entree
]

{ #category : 'accessing' }
Vanne >> entree: anObject [

	entree := anObject
]

{ #category : 'accessing' }
Vanne >> etat [

	^ entree etat
]

{ #category : 'accessing' }
Vanne >> etat1 [

	^ etat
]

{ #category : 'accessing' }
Vanne >> etat: anObject [

	etat := anObject
]

{ #category : 'public access' }
Vanne >> evaluate [ 
^ entree evaluate 
]

{ #category : 'accessing' }
Vanne >> frameSize [

	^ frameSize
]

{ #category : 'accessing' }
Vanne >> frameSize: anObject [

	frameSize := anObject
]

{ #category : 'accessing' }
Vanne >> image [

	^ image
]

{ #category : 'accessing' }
Vanne >> image: anObject [

	image := anObject
]

{ #category : 'accessing' }
Vanne >> inY [

	^ inY
]

{ #category : 'accessing' }
Vanne >> inY: anObject [

	inY := anObject
]

{ #category : 'initialization' }
Vanne >> initialize [ 
	|imageFromFile|
	imageFromFile := Form fromFileNamed: 'vanne.jpg'.
	image := BlElement new
		background: imageFromFile;
		size: 90 @ 90.
	frameSize:=90@90.
	inY:=34.
	Composant dernierComposant: self.
	^ self.
]

{ #category : 'testing' }
Vanne >> isSortie [
    ^ true
]

{ #category : 'accessing' }
Vanne >> ligne [

	^ ligne
]

{ #category : 'accessing' }
Vanne >> ligne: anObject [

	ligne := anObject
]

{ #category : 'results' }
Vanne >> linkTo: aComposant [ 
	ligne := BlElement new.
	self entree: aComposant.
	ligne geometry: (BlLineGeometry from: ((self currentX)@(self currentY + (self inY))) to: ((aComposant currentX+ (aComposant frameSize x)))@(aComposant currentY + aComposant outY)).
	(entree etat value) ifTrue: [ ligne border: (BlBorder paint: Color green width: 3). ] ifFalse: [ ligne border: (BlBorder paint: Color red width: 3). ].
	self entree: aComposant.
	
]

{ #category : 'initialization' }
Vanne >> setPos: x y: y [
	image position: x@y.
	currentX := x.
	currentY := y.
]
