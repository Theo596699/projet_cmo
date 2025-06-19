"
Sous classe de composant définissant le comportement de l'interrupteur
"
Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#instVars : [
		'etat',
		'currentX',
		'currentY',
		'image',
		'frameSize',
		'outY'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'accessing' }
Interrupteur >> currentX [

	^ currentX
]

{ #category : 'accessing' }
Interrupteur >> currentX: anObject [

	currentX := anObject
]

{ #category : 'accessing' }
Interrupteur >> currentY [

	^ currentY
]

{ #category : 'accessing' }
Interrupteur >> currentY: anObject [

	currentY := anObject
]

{ #category : 'accessing' }
Interrupteur >> description [ 
	^ self class name, ' id :', self id printString.
]

{ #category : 'accessing' }
Interrupteur >> etat [

	^ etat
]

{ #category : 'accessing' }
Interrupteur >> etat: anObject [

	etat := anObject
]

{ #category : 'public access' }
Interrupteur >> evaluate [ 
^ etat 
]

{ #category : 'accessing' }
Interrupteur >> frameSize [

	^ frameSize
]

{ #category : 'accessing' }
Interrupteur >> frameSize: anObject [

	frameSize := anObject
]

{ #category : 'accessing' }
Interrupteur >> image [

	^ image
]

{ #category : 'accessing' }
Interrupteur >> image: anObject [

	image := anObject
]

{ #category : 'initialization' }
Interrupteur >> initialize [ 
		|imageFromFile|
	image := BlElement new.
	imageFromFile := Form fromFileNamed: 'I_close.png'.
	image
		background: imageFromFile;
		size: 100 @ 100.
	frameSize :=100@100.
	outY:=53.
	image
		addEventHandlerOn: BlMouseDownEvent
		do: [ :e | etat value ifTrue: [self off] ifFalse: [self on]].
	Composant dernierComposant: self.
	etat:= true.
	^ self.
]

{ #category : 'testing' }
Interrupteur >> isInterrupteur [
    ^ true
]

{ #category : 'accessing enum' }
Interrupteur >> off [ 
	|imageFromFile|
	imageFromFile := Form fromFileNamed: 'I_open.png'.
	image
		background: imageFromFile;
		size: 100 @ 100.
	etat:= SignalBas new. 
	Composant dernierComposant etat.
	^ etat
]

{ #category : 'accessing enum' }
Interrupteur >> on [
	|imageFromFile|
	imageFromFile := Form fromFileNamed: 'I_close.png'.
	image
		background: imageFromFile;
		size: 100 @ 100.
	etat:= SignalHaut new.
	Composant dernierComposant etat.
	^ etat
]

{ #category : 'accessing' }
Interrupteur >> outY [

	^ outY
]

{ #category : 'accessing' }
Interrupteur >> outY: anObject [

	outY := anObject
]

{ #category : 'initialization' }
Interrupteur >> setPos: x y: y [
	image position: x@y.
	currentX := x.
	currentY := y.
]
