# Experiment 2

## Aim

To study rules and unification in PROLOG.

## Description

Rules in PROLOG are used to derive new information from existing facts. A rule consists of a head and a body. Unification is the process of matching terms and assigning values to variables so that two expressions become identical.

## Program

prolog
parent(john, mary).
parent(john, david).
parent(susan, mary).
parent(susan, david).

male(john).
female(susan).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).


## Sample Queries

prolog
?- father(john, mary).
true.


prolog
?- mother(susan, david).
true.


prolog
?- sibling(mary, david).
true.


prolog
?- father(X, mary).
X = john.

## Result

Thus, rules and unification in PROLOG were studied and implemented successfully.
