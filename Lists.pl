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