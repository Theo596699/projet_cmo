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
	^ self class name, ' id :', self id printString.
]

{ #category : 'accessing' }
And >> etat [
   	  self assert: entree1 notNil description: 'Entrée 1 non connectée'.
     self assert: entree2 notNil description: 'Entrée 2 non connectée'.
   ^ (entree1 etat) & (entree2 etat).


]

{ #category : 'accessing' }
And >> etat: anObject [

	etat := anObject
]
