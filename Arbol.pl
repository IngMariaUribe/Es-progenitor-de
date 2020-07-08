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

esNieto(A,B):- progenitor(B,C),progenitor(C,A).
esAbuelo(A,B):- esNieto(B,A).
esHermano(A,B): - progenitor(C,A),progenitor(C,B).
