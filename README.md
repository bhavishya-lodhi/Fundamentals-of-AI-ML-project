# Fundamentals of Artificial Intelligence – PROLOG Experiments

## Course

*Fundamentals of Artificial Intelligence (AI/ML)*

## Project Title

*Implementation of PROLOG Programs for Artificial Intelligence*

## Student Details

*Name:* Bhavishya Lodhi  
*Registration Number:* 25MIM10067  
*Branch:* B.Tech CSE  
*Year:* 2nd Year  
*College:* VIT Bhopal University  

---

## 1. Introduction

PROLOG (Programming in Logic) is a logic programming language widely used for studying Artificial Intelligence and knowledge representation.

Unlike conventional programming languages, PROLOG represents knowledge using facts and rules and answers questions through logical inference and unification.

This project contains the implementation of the PROLOG experiments prescribed for the Fundamentals of Artificial Intelligence course. The experiments cover basic PROLOG concepts as well as practical AI-oriented applications such as family-tree reasoning, set operations, and library management.

---

## 2. Objectives

The main objectives of this project are:

- To understand the basic syntax and concepts of PROLOG.
- To study facts, objects, predicates, and variables.
- To understand rules and unification.
- To study the cut and fail predicates.
- To perform arithmetic and input/output operations.
- To understand compound goals.
- To implement recursion in PROLOG.
- To understand and manipulate lists.
- To study dynamic databases.
- To perform string operations.
- To implement a family tree using logical relationships.
- To implement basic set operations.
- To develop a simple Library Management System using PROLOG.

---

## 3. Software Requirements

### Software

- SWI-Prolog
- Windows / Linux / macOS
- GitHub

### Programming Language

- PROLOG

---

## 4. List of Experiments

| Experiment No. | Title |
|---|---|
| 1 | Study of Facts, Objects, Predicates and Variables in PROLOG |
| 2 | Study of Rules and Unification in PROLOG |
| 3 | Study of Cut and Fail Predicate in PROLOG |
| 4 | Study of Arithmetic Operators, Simple Input/Output and Compound Goals |
| 5 | Study of Recursion in PROLOG |
| 6 | Study of Lists in PROLOG |
| 7 | Study of Dynamic Databases in PROLOG |
| 8 | Study of String Operations in PROLOG |
| 9 | PROLOG Program to Maintain a Family Tree |
| 10 | PROLOG Program to Implement Set Operations |
| 11 | PROLOG Program to Implement a Library Management System |

---

# 5. Experiment 1

## Aim

To study facts, objects, predicates, and variables in PROLOG.

## Description

Facts represent known information in PROLOG. Predicates describe relationships or properties of objects. Variables are used to represent unknown values.

## Program

```prolog
student(bhavishya).
student(rahul).
student(rahul).

likes(bhavishya, programming).
likes(rahul, ai).

age(bhavishya, 20).
age(rahul, 19).
```

## Sample Queries
?- student(bhavishya).

Output:

true.

?- student(X).

Output:

X = bhavishya ;

X = rahul.

?- age(bhavishya, X).

Output:

X = 20.

Result

Thus, facts, objects, predicates, and variables in PROLOG were studied successfully.
