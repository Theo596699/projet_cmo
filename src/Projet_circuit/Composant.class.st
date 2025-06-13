"
Classe comprenant tous nos composants sous forme de classe filles
"
Class {
	#name : 'Composant',
	#superclass : 'Object',
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'accessing' }
Composant >> id [ 
	^self hash
]
