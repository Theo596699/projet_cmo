"
Sous classe de composant regroupant les portes
"
Class {
	#name : 'Porte',
	#superclass : 'Composant',
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'testing' }
Porte >> isInterrupteur [
    ^ false
]

{ #category : 'testing' }
Porte >> isSortie [
    ^ false
]
