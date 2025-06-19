"
Classe comprenant tous nos composants sous forme de classe filles
"
Class {
	#name : 'Composant',
	#superclass : 'Object',
	#instVars : [
		'sortie',
		'id'
	],
	#classInstVars : [
		'dernierComposant'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'accessing' }
Composant class >> dernierComposant [ 
	^ dernierComposant 

]

{ #category : 'accessing' }
Composant class >> dernierComposant: anObject [

	dernierComposant := anObject
]

{ #category : 'accessing' }
Composant >> id [ 
	^id
]

{ #category : 'accessing' }
Composant >> id: anObject [

	id := anObject
]

{ #category : 'accessing' }
Composant >> sortie [

	^ sortie
]

{ #category : 'accessing' }
Composant >> sortie: anObject [

	sortie := anObject
]
