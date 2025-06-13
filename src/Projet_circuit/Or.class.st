Class {
	#name : 'Or',
	#superclass : 'Porte2Entrees',
	#instVars : [
		'etat'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'accessing' }
Or >> description [ 
	^ {self. self id.}
]

{ #category : 'accessing' }
Or >> etat [
    ^ (entree1 etat) | (entree2 etat).

]

{ #category : 'accessing' }
Or >> etat: anObject [

	etat := anObject
]
