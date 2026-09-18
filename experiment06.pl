# Experiment 6

## Aim

To study and implement list operations in PROLOG.

## Description

A list in PROLOG is an ordered collection of elements. A list can be empty or can contain a head element and a tail list. Lists are commonly used for storing and processing collections of data.

This experiment demonstrates membership, length, sum, and reverse operations on lists.

## Program

prolog
member_of(X, [X|_]).

member_of(X, [_|T]) :-
    member_of(X, T).

list_length([], 0).

list_length([_|T], Length) :-
    list_length(T, L1),
    Length is L1 + 1.

list_sum([], 0).

list_sum([H|T], Sum) :-
    list_sum(T, Rest),
    Sum is H + Rest.

reverse_list([], []).

reverse_list([H|T], R) :-
    reverse_list(T, R1),
    append(R1, [H], R).


## Sample Queries

### 1. Check Membership

prolog
?- member_of(3, [1,2,3,4]).
true.


### 2. Find List Length

prolog
?- list_length([10,20,30,40], L).
L = 4.


### 3. Find Sum of List

prolog
?- list_sum([10,20,30,40], S).
S = 100.


### 4. Reverse a List

prolog
?- reverse_list([1,2,3,4], R).
R = [4,3,2,1].

## Result

Thus, list operations such as membership, length, sum, and reverse were studied and implemented successfully in PROLOG.
