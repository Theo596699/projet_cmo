Class {
	#name : 'Not',
	#superclass : 'Porte',
	#instVars : [
		'entree',
		'etat'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'accessing' }
Not >> description [ 
	^ self class name, ' id :', self id printString.
]

{ #category : 'accessing' }
Not >> entree [

	^ entree
]

{ #category : 'accessing' }
Not >> entree: anObject [

	entree := anObject
]

{ #category : 'accessing' }
Not >> etat [
	self assert: entree notNil description: 'Entrée non connectée'.
	^ entree etat not
]

{ #category : 'accessing' }
Not >> etat: anObject [

	etat := anObject
]
