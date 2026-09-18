# Experiment 8

## Aim

To study and implement string operations in PROLOG such as substring, string position, palindrome, uppercase, and lowercase conversion.

## Description

PROLOG provides built-in predicates for working with strings. In this experiment, sub_string/5 is used to find substrings and their positions. String characters are used to check whether a string is a palindrome. The string_upper/2 and string_lower/2 predicates are used for case conversion.

## Program

prolog
% Find substring

substring(String, Substring) :-
    sub_string(String, _, _, _, Substring).


% Find position of substring

string_position(String, Substring, Position) :-
    sub_string(String, Before, _, _, Substring),
    Position is Before + 1.


% Check palindrome

palindrome(String) :-
    string_chars(String, Chars),
    reverse(Chars, Reversed),
    Chars = Reversed.


% Convert string to uppercase

uppercase_string(String, Upper) :-
    string_upper(String, Upper).


% Convert string to lowercase

lowercase_string(String, Lower) :-
    string_lower(String, Lower).


## Sample Queries

### 1. Find Substring

prolog
?- substring("Artificial Intelligence", "Intelligence").
true.


### 2. Find String Position

prolog
?- string_position("Artificial Intelligence", "Intelligence", P).
P = 12.


### 3. Check Palindrome

prolog
?- palindrome("madam").
true.


### 4. Check Non-Palindrome

prolog
?- palindrome("hello").
false.


### 5. Convert to Uppercase

prolog
?- uppercase_string("artificial intelligence", U).
U = "ARTIFICIAL INTELLIGENCE".


### 6. Convert to Lowercase

prolog
?- lowercase_string("ARTIFICIAL INTELLIGENCE", L).
L = "artificial intelligence".
 
## Result

Thus, string operations such as substring, string position, palindrome checking, uppercase conversion, and lowercase conversion were studied and implemented successfully in PROLOG.
