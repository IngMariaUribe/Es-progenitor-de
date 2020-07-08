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

eshijo(X,Y):- progenitor(Y,X).
casado(X,Y):- eshijo(C,X), eshijo(C,Y).
feliz(X) :- casado(X,_).


