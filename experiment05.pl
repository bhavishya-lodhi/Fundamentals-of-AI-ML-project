# Experiment 5

## Aim

To study and implement recursion in PROLOG.

## Description

Recursion is a technique in which a predicate calls itself to solve a smaller version of the same problem. In PROLOG, recursion is commonly used for mathematical calculations and processing data structures.

## Program

prolog
% Factorial of a number

factorial(0, 1).

factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Result1),
    Result is N * Result1.


% Sum of first N natural numbers

sum_n(0, 0).

sum_n(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sum_n(N1, Sum1),
    Sum is N + Sum1.


% Fibonacci series

fibonacci(0, 0).
fibonacci(1, 1).

fibonacci(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, R1),
    fibonacci(N2, R2),
    Result is R1 + R2.


## Sample Queries

### Factorial

prolog
?- factorial(5, R).
R = 120.


### Sum of First N Natural Numbers

prolog
?- sum_n(5, R).
R = 15.


### Fibonacci

prolog
?- fibonacci(7, R).
R = 13.
 
## Result

Thus, recursion was studied and implemented successfully in PROLOG using factorial, sum of natural numbers, and Fibonacci calculations.
