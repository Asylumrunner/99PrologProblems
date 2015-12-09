% A knowledge base written for the first 28 problems of Werner Hett's 99 Prolog Problems, all based on list processing

%1.01 Find the last element of a list

lastElem(L1, E) :-
	last(L1, A),
	E is A.

% 1.02 Find the second-to-last element of a list

secondToLast(L1, E) :-
	last(L1, A),
	delete(L1, A, L2),
	lastElem(L2, E).

% 1.03 Find the Kth element of a list

kthElement([_|T], K, E) :-
	K > 1,
	X is K - 1,
	kthElement(T, X, E).

kthElement([H|_], 1, H).

% 1.04 Count the elements of a list

countElements([_|T], X) :-
	countElements(T, N),
	X is N + 1.

countElements([_], 1).

% 1.05 Reverse a list

myReverse([], []).

myReverse([H|T], R) :-
	myReverse(T, T1),
	append(T1, [H], R).

% 1.06 Determine if a list is a palindrome

palindrome(L1) :-
	myReverse(L1, L2),
	L1 == L2.

% 1.07 Flatten a nested list structure

flatten([[H|T]|T2], L3) :-
	append([H], T, L1),
	flatten(T2, L2),
	append(L1, L2, L3).

flatten([H|T], L2) :-
	flatted(T, L1),
	append([H], L1, L2).

flatten([X], [X]).

flatten([[X]], [X]).

% 1.08 Eliminate consecutive duplicates of list elements

retrieveHead([H|_], H).

retrieveHead([X], X).

retrieveTail([_|T], T).

retrieveTail([_], []).

elimDupes([H|T], L2) :-
	retrieveHead(T, H),
	elimDupes(T, L2).

elimDupes([H|T], L2) :-
	elimDupes(T, L1),
	append([H], L1, L2).

elimDupes([X], [X]).

elimDupes([], []).

% 1.09 Pack consecutive duplicates of list elements into sublists

% 1.10 Run-length encoding of a list

% 1.11 Modified run-length encoding

% 1.12 Decode a run-length encoded list

% 1.13 Run-length encoding of a list (direct solution)

% 1.14 Duplicate the elements of a list

dupeElements([H|T], L3) :-
	append([H], [H], L1),
	dupeElements(T, L2),
	append(L1, L2, L3).

dupeElements([X], [X, X]).

% 1.15 Duplicate the number of elements of a list a given number of times

% 1.16 Drop every Nth element of a list

% 1.17 Split a list into two parts, given the length of the first parts

% 1.18 Extract a slice from a list

% 1.19 Rotate a list N places to the left

shift(List1, X, List2) :-
	X > 0,
	rotateCCW(List1, List3),
	Z is X -1,
	shift(List3, Z, List2).

rotateCCW([H|T], List2) :-
	append(T, [H], List2).

% 1.20 Remove the Kth element from a list

removeKth([H|T], X, N, L2) :-
	N > 0,
	N1 is N - 1,
	removeKth(T, X, N1, L3),
	append([H], L3, L2).

removeKth([H|T], H, 0, T).

% 1.21 Insert an element at a given position into a list

insertAtK([H|T], X, K, L) :-
	K > 0,
	K1 is K - 1,
	insertAtK(T, X, K1, L2),
	append([H], L2, L).

insertAtK(L1, X, 0, L2) :-
	append([X], L1, L2).


% 1.22 Create a list containing all integers within a given range

range(X, X, [X]).

range(X, Y, L) :-
	X1 is X + 1,
	range(X1, Y, L1),
	append([X], L1, L).

% 1.23 Extract a given number of randomly selected elements from a list

% 1.24 Lotto: Draw N random numbers from the set 1....M

% 1.25 Generate a random permutation of the elements of a list

% 1.26 Generate the combinations of K distinct objects chosen from the N elements of a list

% 1.27 Group the elements of a set into disjoint second-to-last

% 1.28 Sorting a list of lists according to length of sublists
	