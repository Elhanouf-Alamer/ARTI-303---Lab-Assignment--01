female(nora).
female(hind).
female(dana).
female(lama).
female(deema).
female(nora).
male(ahmed).
male(omar).

parent(ahmed, omar).
parent(ahmed, dana).
parent(ahmed, hind). 
parent(nora,omar).
parent(nora, hind).
parent(nora, dana).
parent(hind, lama).
parent(hind, deema).

father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).
sister(X,Y) :- female(X), parent(P,X),parent(P,Y), X \= Y.
brother(X,Y) :- male(X), parent(P,X), parent(P,Y), X \= Y.




