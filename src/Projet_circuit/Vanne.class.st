Class {
	#name : 'Vanne',
	#superclass : 'Composant',
	#instVars : [
		'etat',
		'entree'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'accessing' }
Vanne >> description [ 
	^ {self. self id.}
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

	^ etat
]

{ #category : 'accessing' }
Vanne >> etat: anObject [

	etat := anObject
]
