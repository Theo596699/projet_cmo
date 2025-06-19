Class {
	#name : 'SignalBas',
	#superclass : 'Signal',
	#category : 'Projet_circuit',
	#package : 'Projet_circuit'
}

{ #category : 'controlling' }
SignalBas >> and: aSignal [
^ self
]

{ #category : 'controlling' }
SignalBas >> not [
^ SignalHaut new
]

{ #category : 'controlling' }
SignalBas >> or: aSignal [
^ aSignal 
]

{ #category : 'evaluating' }
SignalBas >> value [ 
^ false
]
