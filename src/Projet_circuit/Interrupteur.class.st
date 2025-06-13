Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#instVars : [
		'etat'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'accessing' }
Interrupteur >> description [ 
	^ {self. self id.}
]

{ #category : 'accessing' }
Interrupteur >> etat [

	^ etat
]

{ #category : 'accessing' }
Interrupteur >> etat: anObject [

	etat := anObject
]

{ #category : 'accessing enum' }
Interrupteur >> off [ 
	etat:= false.
	^ etat
]

{ #category : 'accessing enum' }
Interrupteur >> on [
	etat:= true.
	^ etat
]
