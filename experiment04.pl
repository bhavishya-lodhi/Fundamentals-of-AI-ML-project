# Experiment 4

## Aim

To study arithmetic operators, simple input/output, and compound goals in PROLOG.

## Description

PROLOG provides arithmetic operators such as +, -, *, and / for performing calculations. The is operator evaluates an arithmetic expression. Input and output can be performed using predicates such as read/1, write/1, and format/2.

Compound goals allow multiple conditions to be combined using the comma (,) operator. The goals must be satisfied for the complete rule to succeed.

## Program

prolog
addition(A, B, Result) :-
    Result is A + B.

subtraction(A, B, Result) :-
    Result is A - B.

multiplication(A, B, Result) :-
    Result is A * B.

division(A, B, Result) :-
    B =\= 0,
    Result is A / B.

eligible(Name, Marks, Attendance) :-
    Marks >= 50,
    Attendance >= 75,
    format('~w is eligible.~n', [Name]).

not_eligible(Name, Marks, Attendance) :-
    (Marks < 50 ; Attendance < 75),
    format('~w is not eligible.~n', [Name]).

student_input :-
    write('Enter your name: '),
    read(Name),
    format('Hello, ~w!~n', [Name]).


## Sample Queries

prolog
?- addition(10, 5, R).
R = 15.


prolog
?- subtraction(10, 5, R).
R = 5.


prolog
?- multiplication(10, 5, R).
R = 50.


prolog
?- division(10, 2, R).
R = 5.0.


prolog
?- eligible(bhavishya, 80, 85).
bhavishya is eligible.
true.


prolog
?- not_eligible(rahul, 40, 80).
rahul is not eligible.
true.


## Input/Output Example

prolog
?- student_input.
Enter your name: bhavishya.
Hello, bhavishya!
true.

## Result

Thus, arithmetic operators, simple input/output, and compound goals in PROLOG were studied and implemented successfully.
