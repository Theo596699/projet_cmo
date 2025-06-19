"
Classe de circuit qui définit un circuit composé d'instances de la classe composant
"
Class {
	#name : 'Circuit',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'composants',
		'space',
		'interrupteurs',
		'sorties'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'adding' }
Circuit >> addComposant: aComposant [
	composants add:aComposant.
	space root addChild: (aComposant image).
	
]

{ #category : 'as yet unclassified' }
Circuit >> circuitEssai [
	|and not i1 i2 i3 or|
	i1 := Interrupteur new.
	i2 := Interrupteur new.
	i3 := Interrupteur new.
	not := Not new.
	or := Or new.
	and := And new.
	self addComposant: i1.
	self addComposant: i2.
	self addComposant: i3.
	self addComposant: not.
	self addComposant: or.
	self addComposant: and.
	i1 setPos: 100 y: 100.
	i2 setPos: 100 y: 300.
	i3 setPos: 100 y: 500.
	and setPos: 400 y: 400.
	not setPos: 300 y: 500.
	or setPos: 300 y: 300.
	not linkTo: i3.
	or linkTo:i1 by:(or inY1).
	or linkTo:i2 by:(or inY2).
	and linkTo:or by:(and inY1).
	and linkTo:not by:(and inY2).
space root addChild: (and ligne1).
space root addChild: (and ligne2).
space root addChild: (or ligne1).
space root addChild: (or ligne2).
space root addChild: (not ligne).
space show.




]

{ #category : 'accessing' }
Circuit >> composants [

	^ composants
]

{ #category : 'accessing' }
Circuit >> composants: anObject [

	composants := anObject
]

{ #category : 'public access' }
Circuit >> evaluate [ 
|signal| 
signal := sorties first evaluate.
^ signal
]

{ #category : 'initialization' }
Circuit >> initializeNom: aNom composants: aCollection [
	nom:=aNom.
	composants := aCollection asSortedCollection: [ :a :b| a id< b id].
	interrupteurs := composants select: [  :each| each isInterrupteur]. 
	sorties := composants select: [  :each| each isSortie ].
]

{ #category : 'accessing' }
Circuit >> interrupteurs [

	^ interrupteurs
]

{ #category : 'accessing' }
Circuit >> interrupteurs: anObject [

	interrupteurs := anObject
]

{ #category : 'accessing' }
Circuit >> nom [

	^ nom
]

{ #category : 'accessing' }
Circuit >> nom: anObject [

	nom := anObject
]

{ #category : 'accessing' }
Circuit >> sorties [

	^ sorties
]

{ #category : 'accessing' }
Circuit >> sorties: anObject [

	sorties := anObject
]

{ #category : 'accessing' }
Circuit >> space [

	^ space
]

{ #category : 'accessing' }
Circuit >> space: anObject [

	space := anObject
]
