"
Sous classe de composant définissant le comportement de la porte not
"
Class {
	#name : 'Not',
	#superclass : 'Porte',
	#instVars : [
		'entree',
		'etat',
		'inY',
		'outY',
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
Not >> actualisationCouleur [
	(entree etat value) ifTrue: [ ligne border: (BlBorder paint: Color green width: 3). ] ifFalse: [ ligne border: (BlBorder paint: Color red width: 3). ].
]

{ #category : 'accessing' }
Not >> currentX [

	^ currentX
]

{ #category : 'accessing' }
Not >> currentX: anObject [

	currentX := anObject
]

{ #category : 'accessing' }
Not >> currentY [

	^ currentY
]

{ #category : 'accessing' }
Not >> currentY: anObject [

	currentY := anObject
]

{ #category : 'accessing' }
Not >> description [ 
	^ self class name, ' id :', self id printString.
]

{ #category : 'accessing' }
Not >> entree [

	^ entree
]

{ #category : 'accessing' }
Not >> entree: anObject [

	entree := anObject
]

{ #category : 'accessing' }
Not >> etat [
	self assert: entree notNil description: 'Entrée non connectée'.
	self actualisationCouleur.
	^ entree etat value not
]

{ #category : 'accessing' }
Not >> etat1 [

	^ etat
]

{ #category : 'accessing' }
Not >> etat: anObject [

	etat := anObject
]

{ #category : 'public access' }
Not >> evaluate [ 
^ entree evaluate not
]

{ #category : 'accessing' }
Not >> frameSize [

	^ frameSize
]

{ #category : 'accessing' }
Not >> frameSize: anObject [

	frameSize := anObject
]

{ #category : 'accessing' }
Not >> image [

	^ image
]

{ #category : 'accessing' }
Not >> image: anObject [

	image := anObject
]

{ #category : 'accessing' }
Not >> inY [

	^ inY
]

{ #category : 'accessing' }
Not >> inY: anObject [

	inY := anObject
]

{ #category : 'accessing' }
Not >> initialize [ 
	|imageFromFile|
	imageFromFile := Form fromFileNamed: 'not.png'.
	image := BlElement new
		background: imageFromFile;
		size: 100 @ 100.
	frameSize:=100@100.
	inY:=35.3.
	outY:=35.3.
	Composant dernierComposant: self.
	^ self.
]

{ #category : 'accessing' }
Not >> ligne [

	^ ligne
]

{ #category : 'accessing' }
Not >> ligne: anObject [

	ligne := anObject
]

{ #category : 'accessing' }
Not >> linkTo: aComposant [ 
	ligne := BlElement new.
	self entree: aComposant.
	ligne geometry: (BlLineGeometry from: ((self currentX)@(self currentY + (self inY))) to: ((aComposant currentX+ (aComposant frameSize x)))@(aComposant currentY + aComposant outY)).
	(entree etat value) ifTrue: [ ligne border: (BlBorder paint: Color green width: 3). ] ifFalse: [ ligne border: (BlBorder paint: Color red width: 3). ].
	self entree: aComposant.
	
]

{ #category : 'accessing' }
Not >> outY [

	^ outY
]

{ #category : 'accessing' }
Not >> outY: anObject [

	outY := anObject
]

{ #category : 'accessing' }
Not >> setPos: x y: y [
	image position: x@y.
	currentX := x.
	currentY := y.
]
