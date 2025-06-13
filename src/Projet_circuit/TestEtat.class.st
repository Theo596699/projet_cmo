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
	|i1 i2 a|
	i1:=Interrupteur new.
	i2:=Interrupteur new.
	a:=And new.
	i1 on.
	i2 on.
	a entree1: i1.
	a entree2: i2.
	self assert: a etat.

]

{ #category : 'tests' }
TestEtat >> testComplet [
	|i1 i2 is n o a |
	i1:=Interrupteur new.
	i2:=Interrupteur new.
	is :=Interrupteur new.
	o:=Or new.
	n:=Not new.
	a:=And new.
	i1 on.
	i2 off.
	is on.
	o entree1: i1.
	o entree2: i2.
	n entree: is.
	a entree1: o.
	a entree2: n.
	self deny: a etat.

	
	

]

{ #category : 'tests' }
TestEtat >> testNot [
	|i n|
	i:=Interrupteur new.
	n:=Not new.
	i off.
	n entree: i.
	self assert: n etat.

	
	

]

{ #category : 'tests' }
TestEtat >> testOr [
	|i1 i2 o|
	i1:=Interrupteur new.
	i2:=Interrupteur new.
	o:=Or new.
	i1 off.
	i2 on.
	o entree1: i1.
	o entree2: i2.
	self assert: o etat.

]
