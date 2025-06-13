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
	^ self class name, ' id :', self id printString.
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

	^ entree etat
]

{ #category : 'accessing' }
Vanne >> etat: anObject [

	etat := anObject
]
