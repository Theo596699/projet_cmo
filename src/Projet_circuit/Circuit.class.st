Class {
	#name : 'Circuit',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'interrupteur',
		'vanne',
		'composant'
	],
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'as yet unclassified' }
Circuit >> ajouterComposants: uneCollection [
    composant := uneCollection asSortedCollection: [ :a :b | a id < b id ].
    interrupteur := composant select: [ :c | c isKindOf: Interrupteur ].
    interrupteur := interrupteur asSortedCollection: [ :a :b | a id < b id ].
    vanne := composant select: [ :c | c isSortieCircuit ].  "méthode à définir dans les composants"
    vanne := vanne asSortedCollection: [ :a :b | a id < b id ].
]

{ #category : 'accessing' }
Circuit >> composant [

	^ composant
]

{ #category : 'accessing' }
Circuit >> composant: anObject [

	composant := anObject
]

{ #category : 'instance creation' }
Circuit >> fromComposants: uneCollection [
    | circuit |
    circuit := self new.
    circuit ajouterComposants: uneCollection.
    ^ circuit
]

{ #category : 'initialization' }
Circuit >> initialize [
    composant := OrderedCollection new.
    interrupteur := OrderedCollection new.
    vanne := OrderedCollection new.
]

{ #category : 'accessing' }
Circuit >> interrupteur [

	^ interrupteur
]

{ #category : 'accessing' }
Circuit >> interrupteur: anObject [

	interrupteur := anObject
]

{ #category : 'accessing' }
Circuit >> nom [

	^ nom
]

{ #category : 'accessing' }
Circuit >> nom: anObject [

	nom := anObject
]

{ #category : 'accessing' }
Circuit >> vanne [

	^ vanne
]

{ #category : 'accessing' }
Circuit >> vanne: anObject [

	vanne := anObject
]
