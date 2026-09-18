# Experiment 9

## Aim

To write a PROLOG program to maintain and query a family tree using logical relationships.

## Description

A family tree represents relationships between family members. In PROLOG, family relationships can be represented using facts and rules. This experiment implements relationships such as father, mother, child, sibling, grandparent, grandchild, uncle, and aunt.

## Program

prolog
% Gender facts

male(john).
male(robert).
male(david).
male(michael).

female(susan).
female(mary).
female(lisa).


% Parent facts

parent(john, robert).
parent(susan, robert).

parent(john, mary).
parent(susan, mary).

parent(robert, david).
parent(lisa, david).

parent(robert, michael).
parent(lisa, michael).


% Rules

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

child(X, Y) :-
    parent(Y, X).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).

grandchild(X, Z) :-
    grandparent(Z, X).

uncle(X, Y) :-
    male(X),
    sibling(X, P),
    parent(P, Y).

aunt(X, Y) :-
    female(X),
    sibling(X, P),
    parent(P, Y).


## Sample Queries

### 1. Find Father

prolog
?- father(john, robert).
true.


### 2. Find Mother

prolog
?- mother(susan, mary).
true.


### 3. Find Sibling

prolog
?- sibling(robert, mary).
true.


### 4. Find Grandparent

prolog
?- grandparent(john, david).
true.


### 5. Find Child

prolog
?- child(robert, john).
true.


### 6. Find Grandchild

prolog
?- grandchild(david, john).
true.
 
## Result

Thus, a family tree was successfully implemented in PROLOG using facts and logical rules for different family relationships.
