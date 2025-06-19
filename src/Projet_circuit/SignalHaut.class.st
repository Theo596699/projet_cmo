Class {
	#name : 'SignalHaut',
	#superclass : 'Signal',
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'evaluating' }
SignalHaut >> and: aSignal [
^ aSignal
]

{ #category : 'evaluating' }
SignalHaut >> not [
^ SignalBas new
]

{ #category : 'evaluating' }
SignalHaut >> or: aSignal [ 
^ self
]

{ #category : 'evaluating' }
SignalHaut >> value [ 
^ true
]
