# Experiment 3

## Aim

To study the cut (!) and fail predicates in PROLOG.

## Description

The cut predicate (!) is used to prevent PROLOG from backtracking beyond a particular point. It can be used to commit to a choice that has already been made.

The fail predicate always fails. It is commonly used to force backtracking and control the execution of a PROLOG program.

## Program

prolog
grade(85, excellent) :- !.
grade(70, good) :- !.
grade(_, average).

check_student(bhavishya) :-
    write('Student found.'),
    !.

check_student(_) :-
    fail.


## Sample Queries

prolog
?- grade(85, X).
X = excellent.


prolog
?- grade(70, X).
X = good.


prolog
?- grade(50, X).
X = average.


prolog
?- check_student(bhavishya).
Student found.
true.


prolog
?- check_student(rahul).
false.

## Result

Thus, the cut and fail predicates in PROLOG were studied and implemented successfully.
