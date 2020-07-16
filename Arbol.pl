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
esNieto(A,B):- progenitor(B,C),progenitor(C,A), A\==B.
esAbuelo(A,B):- esNieto(B,A).
esHermano(A,B):- progenitor(C,A),progenitor(C,B), A\==B.
tio(X,Y):-progenitor(Z,Y),esHermano(X,Z).
sobrino(X,Y):-esHermano(Z,Y),eshijo(X,Z).
primo(X,Y):-progenitor(Z,X),progenitor(W,Y),esHermano(Z,W).
esfamiliar(X,Y):- eshijo(X,Y).
esfamiliar(X,Y):- esHermano(X,Y).
esfamiliar(X,Y):- esAbuelo(X,Y).
esfamiliar(X,Y):- esNieto(X,Y).
esfamiliar(X,Y):- tio(X,Y).
esfamiliar(X,Y):- sobrino(X,Y).
esfamiliar(X,Y):- primo(X,Y).
esfamiliar(X,Y):- progenitor(X,Y).
familiares(X,L):- findall(Y,esfamiliar(X,Y),L).
    
    

    

