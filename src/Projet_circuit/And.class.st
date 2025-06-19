"
Sous classe de composant définissant le comportement de la porte AND
"
Class {
	#name : 'And',
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
And >> actualisationCouleur [
	(entree1 etat value) ifTrue: [ ligne1 border: (BlBorder paint: Color green width: 3). ] ifFalse: [ ligne1 border: (BlBorder paint: Color red width: 3). ].
	(entree2 etat value) ifTrue: [ ligne2 border: (BlBorder paint: Color green width: 3). ] ifFalse: [ ligne2 border: (BlBorder paint: Color red width: 3). ].
]

{ #category : 'accessing' }
And >> currentX [

	^ currentX
]

{ #category : 'accessing' }
And >> currentX: anObject [

	currentX := anObject
]

{ #category : 'accessing' }
And >> currentY [

	^ currentY
]

{ #category : 'accessing' }
And >> currentY: anObject [

	currentY := anObject
]

{ #category : 'accessing' }
And >> description [ 
	^ self class name, ' id :', self id printString.
]

{ #category : 'accessing' }
And >> etat [
   	  self assert: entree1 notNil description: 'Entrée 1 non connectée'.
     self assert: entree2 notNil description: 'Entrée 2 non connectée'.
	  self actualisationCouleur.
   ^ (entree1 etat value ) & (entree2 etat value ).


]

{ #category : 'accessing' }
And >> etat1 [

	^ etat
]

{ #category : 'accessing' }
And >> etat: anObject [

	etat := anObject
]

{ #category : 'public access' }
And >> evaluate [ 
^ entree1 evaluate and: entree2 evaluate.
]

{ #category : 'accessing' }
And >> frameSize [

	^ frameSize
]

{ #category : 'accessing' }
And >> frameSize: anObject [

	frameSize := anObject
]

{ #category : 'accessing' }
And >> image [

	^ image
]

{ #category : 'accessing' }
And >> image: anObject [

	image := anObject
]

{ #category : 'accessing' }
And >> inY1 [

	^ inY1
]

{ #category : 'accessing' }
And >> inY1: anObject [

	inY1 := anObject
]

{ #category : 'accessing' }
And >> inY2 [

	^ inY2
]

{ #category : 'accessing' }
And >> inY2: anObject [

	inY2 := anObject
]

{ #category : 'accessing' }
And >> initialize [ 
	|imageFromFile |
	imageFromFile := Form fromFileNamed: 'and.png'.
	image := BlElement new
		background: imageFromFile;
		size: 100 @ 105.
	frameSize:=100@105.
	inY1:=18.5.
	inY2:=51.5.
	outY:=35.3.
	Composant dernierComposant: self.
	^ self.
]

{ #category : 'accessing' }
And >> ligne1 [

	^ ligne1
]

{ #category : 'accessing' }
And >> ligne1: anObject [

	ligne1 := anObject
]

{ #category : 'accessing' }
And >> ligne2 [

	^ ligne2
]

{ #category : 'accessing' }
And >> ligne2: anObject [

	ligne2 := anObject
]

{ #category : 'accessing' }
And >> linkTo: aComposant by: In [
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
	^ self.
]

{ #category : 'accessing' }
And >> outY [

	^ outY
]

{ #category : 'accessing' }
And >> outY: anObject [

	outY := anObject
]

{ #category : 'initialization' }
And >> setPos: x y: y [
	image position: x@y.
	currentX := x.
	currentY := y.
]
