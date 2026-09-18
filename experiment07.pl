# Experiment 7

## Aim

To study and implement dynamic databases in PROLOG.

## Description

A dynamic database in PROLOG allows facts to be added or removed during program execution. The assertz/1 predicate is used to add a new fact, while retract/1 is used to remove a fact.

The dynamic declaration is required when a predicate will be modified during execution.

## Program

prolog
:- dynamic student/2.

student(101, rahul).
student(102, amit).
student(103, priya).

add_student(ID, Name) :-
    assertz(student(ID, Name)).

remove_student(ID, Name) :-
    retract(student(ID, Name)).

show_students :-
    student(ID, Name),
    write(ID),
    write(' - '),
    write(Name),
    nl.


## Sample Queries

### 1. Display Students

prolog
?- show_students.


Output:

text
101 - rahul
102 - amit
103 - priya
true.


### 2. Add a Student

prolog
?- add_student(104, bhavishya).
true.


### 3. Check Added Student

prolog
?- student(104, bhavishya).
true.


### 4. Remove a Student

prolog
?- remove_student(102, amit).
true.


### 5. Check Removed Student

prolog
?- student(102, amit).
false.

## Result

Thus, dynamic databases were studied and implemented successfully in PROLOG using assertz/1 and retract/1.
