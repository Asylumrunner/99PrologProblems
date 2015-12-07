# 99PrologProblems
My attempt to solve Werner Hett's 99 Prolog Problems

## Introduction
Warner Hett's 99 Prolog Problems are a collection he assembled whilst teaching in Switzerland. Divided into seven sections, the 99 problems are meant to provide practice for the programmer attempting to master Logical Programming.

The 99 Prolog Problems, as more as more details about them, can be found [here](https://sites.google.com/site/prologsite/prolog-problems).

I ended up discovering the P-99 after having to program a series of simple Prolog predicates for my Organization of Programming Languages class at UTD. I actually found Prolog to be an extremely fun language to program in. I sought after more problems than the simple 8 assigned to me, and I found the P-99.

## The Seven Sections

The seven sections of the P-99 are List Processing, Arithmetic, Logic and Codes, Binary Trees, Multiway Trees, Graphs, and Miscellaneous. These seven sections cover quite a few of the problem spaces that Logic Programming can handle best: those which involve decision making given data.

## Logic Programming

Logic programming itself is a paradigm based on formal propositional logic. Generally speaking, this style of programming involves creating a domain of knowledge, which in turn is based on facts and logical implications of the form "If X, then Y". This knowledge base is then "consulted", and the user will then query the knowledge base, which will determine if statements are true, or false. 

For example, in Prolog, you can define a set of predicates to determine if a number is odd as follows:

	isOdd(X) :-
		Y is X - 2,
		isOdd(Y).

	isOdd(1).

	isOdd(0) :-
		false.

//This solution isn't elegant at all, but it is designed to be extremely easy to understand, for purpose of understanding the language.

Basically, these predicates define, in very simple terms, the rules by which a positive number can be considered odd (this solution will not work for negative numbers, but, again, just a demonstation). The first predicate states that a number is odd if that number - 2 is odd. 

The latter two predicates form a base case. When you subtract 2 enough times from an odd number, it will eventually equal one. Thus, whenever we reduce a number to 1 from our isOdd predicate, we know it is true. When you subtract two enough times from an even number, however, it will eventually equal zero, and will never equal one. Thus, we have our base case for even numbers, which will return false, and thus return false for every number equal to 0 + 2 + 2 .... up to the initial even number.