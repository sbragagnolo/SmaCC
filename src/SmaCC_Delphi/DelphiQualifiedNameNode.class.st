Class {
	#name : #DelphiQualifiedNameNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'name',
		'left',
		'genericTypeArguments',
		'commas',
		'right',
		'namespace',
		'period'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiQualifiedNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQualifiedName: self
]

{ #category : #generated }
DelphiQualifiedNameNode >> commas [
	^ commas
]

{ #category : #generated }
DelphiQualifiedNameNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
DelphiQualifiedNameNode >> compositeNodeVariables [
	^ #(#genericTypeArguments)
]

{ #category : #generated }
DelphiQualifiedNameNode >> genericTypeArguments [
	^ genericTypeArguments
]

{ #category : #generated }
DelphiQualifiedNameNode >> genericTypeArguments: anOrderedCollection [
	self setParents: self genericTypeArguments to: nil.
	genericTypeArguments := anOrderedCollection.
	self setParents: self genericTypeArguments to: self
]

{ #category : #generated }
DelphiQualifiedNameNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
DelphiQualifiedNameNode >> initialize [
	super initialize.
	genericTypeArguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiQualifiedNameNode >> left [
	^ left
]

{ #category : #generated }
DelphiQualifiedNameNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
DelphiQualifiedNameNode >> name [
	^ name
]

{ #category : #generated }
DelphiQualifiedNameNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
DelphiQualifiedNameNode >> namespace [
	^ namespace
]

{ #category : #generated }
DelphiQualifiedNameNode >> namespace: aDelphiQualifiedNameNode [
	self namespace notNil
		ifTrue: [ self namespace parent: nil ].
	namespace := aDelphiQualifiedNameNode.
	self namespace notNil
		ifTrue: [ self namespace parent: self ]
]

{ #category : #generated }
DelphiQualifiedNameNode >> nodeVariables [
	^ #(#namespace)
]

{ #category : #generated }
DelphiQualifiedNameNode >> period [
	^ period
]

{ #category : #generated }
DelphiQualifiedNameNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
DelphiQualifiedNameNode >> right [
	^ right
]

{ #category : #generated }
DelphiQualifiedNameNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
DelphiQualifiedNameNode >> tokenVariables [
	^ #(#name #left #right #period)
]
