Class {
	#name : 'TestEtat',
	#superclass : 'TestCase',
	#classInstVars : [
		'i1'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'tests' }
TestEtat >> testAnd [
	|i1 i2 a space|
	space := BlSpace new.
	i1:=Interrupteur new.
	i2:=Interrupteur new.
	i1 on.
	i2 on.
	a:=And new.
	i1 setPos: 100 y: 100.
	i2 setPos: 100 y: 300.
	a setPos: 400 y: 400.
	a entree1: i1.
	a entree2: i2.
	a linkTo:i1 by:(a inY1).
	a linkTo:i2 by:(a inY2).
	space root addChild: (a image).
	space root addChild: (i1 image).
	space root addChild: (i2 image).
	self assert: a etat.

]

{ #category : 'tests' }
TestEtat >> testComplet [
	| space and or not  i1 i2 i3 van|
space := BlSpace new.
i1 := Interrupteur new.
i2 := Interrupteur new.
i3 := Interrupteur new.
not := Not new.
or := Or new.
and := And new.
van := Vanne new.
i1 setPos: 100 y: 100.
i2 setPos: 100 y: 300.
i3 setPos: 100 y: 500.
and setPos: 400 y: 400.
not setPos: 300 y: 500.
or setPos: 300 y: 300.
van setPos: 600 y: 400. 
not linkTo: i3.
or linkTo:i1 by:(or inY1).
or linkTo:i2 by:(or inY2).
and linkTo:or by:(and inY1).
and linkTo:not by:(and inY2).
van linkTo:and.
space root addChild: (and image).
space root addChild: (i1 image).
space root addChild: (i2 image).
space root addChild: (i3 image).
space root addChild: (not image).
space root addChild: (or image).
space root addChild: (van image).
space root addChild: (and ligne1).
space root addChild: (and ligne2).
space root addChild: (or ligne1).
space root addChild: (or ligne2).
space root addChild: (not ligne).
space root addChild: (van ligne).
Composant dernierComposant: van.
space show.
]

{ #category : 'tests' }
TestEtat >> testNot [
	|i n space|
	space := BlSpace new.
	i:=Interrupteur new.
	i off.
	n:=Not new.
	i setPos: 100 y: 100.
	n setPos: 300 y: 300.
	n linkTo:i .
	space root addChild: (n image).
	space root addChild: (i image).
	self assert: n etat.

	
	

]

{ #category : 'tests' }
TestEtat >> testOr [
	|i1 i2 a space|
	space := BlSpace new.
	i1:=Interrupteur new.
	i2:=Interrupteur new.
	i1 on.
	i2 on.
	a:=Or new.
	i1 setPos: 100 y: 100.
	i2 setPos: 100 y: 300.
	a setPos: 400 y: 400.
	a entree1: i1.
	a entree2: i2.
	a linkTo:i1 by:(a inY1).
	a linkTo:i2 by:(a inY2).
	space root addChild: (a image).
	space root addChild: (i1 image).
	space root addChild: (i2 image).
	self assert: a etat.

]
