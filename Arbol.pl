progenitor(cecilia,daniel).
progenitor(pedro,daniel).
progenitor(cecilia,martha).
progenitor(pedro,martha).
progenitor(cecilia,valentina).
progenitor(pedro,valentina).

progenitor(jose,patricio).
progenitor(jose,daniela).
progenitor(jose,viviana).
progenitor(daniel,patricio).
progenitor(daniel,daniela).
progenitor(daniel,viviana).


progenitor(martha, paula).
progenitor(juan, paula).
progenitor(martha, yilber).
progenitor(juan, yilber).

eshijo(X,Y):-progenitor(Y,X).casado(X,Y):- eshijo(C,X), eshijo(C,Y).
esHermano(X,Y):-progenitor(C,X),progenitor(C,Y).
tio(X,Y):-progenitor(Z,Y),hermano(X,Z).
sobrino(X,Y):-hermano(Z,Y),eshijo(X,Z).
primo(X,Y):-progenitor(Z,X),progenitor(W,Y),hermano(Z,W).
