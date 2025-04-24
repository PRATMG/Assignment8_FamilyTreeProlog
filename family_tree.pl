% ---------------------------------------
% Family Tree in Prolog
% ---------------------------------------

% Gender facts
male(john).
male(michael).
male(bob).
male(tom).
female(susan).
female(mary).
female(lisa).

% Parent relationships
parent(john, michael).
parent(susan, michael).
parent(john, mary).
parent(susan, mary).
parent(michael, bob).
parent(michael, lisa).
parent(lisa, tom).

% ---------------------------------------
% Derived Relationships
% ---------------------------------------

% Grandparent: X is a grandparent of Y if X is parent of Z and Z is parent of Y
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Sibling: X and Y are siblings if they share at least one parent and are not the same
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Cousin: X and Y are cousins if their parents are siblings
cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).

% Descendant: X is a descendant of Y if Y is a parent of X or a parent of a descendant
descendant(X, Y) :- parent(Y, X).
descendant(X, Y) :- parent(Y, Z), descendant(X, Z).
