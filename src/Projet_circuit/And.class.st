Class {
	#name : 'And',
	#superclass : 'Porte2Entrees',
	#instVars : [
		'etat'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'accessing' }
And >> description [ 
	^ {self. self id.}
]

{ #category : 'accessing' }
And >> etat [
   ^ (entree1 etat) & (entree2 etat).

]

{ #category : 'accessing' }
And >> etat: anObject [

	etat := anObject
]
