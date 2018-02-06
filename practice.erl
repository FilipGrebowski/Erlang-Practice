-module(practice).
-export([triArea/3, maxThree/3, howManyEqual/3, beat/1, lose/1, pieces/1, doubleAll/1, evensOne/1, evensTwo/1, index/2, merge/2, mergeSort/2]).

% Calculates a traingle area.
triArea(A, B, C) ->
	S = (A + B + C)/2,
	math:sqrt(S * (S - A) * (S - B) * (S - C)).


% Calculates the maximum number out of three given numbers.
maxThree(A, B, C) ->
	max(A, max(B, C)).


% How many numbers passed as an argument are equal?
howManyEqual(X, X, X) -> 3;
howManyEqual(_Y, X, X) -> 2;
howManyEqual(X, X, _Y) -> 2;
howManyEqual(X, _Y, X) -> 2;
howManyEqual(_, _, _) -> 0.


% Rock, papper and scissors game.
beat(rock) -> paper;
beat(paper) -> scissors;
beat(scissors) -> rock;
beat(_) -> incorrect.

lose(rock) -> scissors;
lose(paper) -> rock;
lose(scissors) -> paper;
lose(_) -> incorrect.

% A defined function 'pieces' which tells you the maximum number
% of pieces into which you can cut a piece of paper with N cuts.
pieces(0) ->
	1;
pieces(1) ->
	2;
pieces(N) ->
	N + pieces(N - 1).


% Doubling all the numbers in a list.
doubleAll([]) ->
	[];
doubleAll([X|Xs]) ->
	[X * 2 | doubleAll(Xs)].


% Returning all the even numbers
evensOne([]) ->
	[];
evensOne([X|Xs]) when X rem 2 == 0 ->
	[X | evensOne(Xs)];
evensOne([_|Xs]) ->
	evensOne(Xs).

% Another way of returning all the even numbers in a list
% can be written as follows using cases.
evensTwo([]) ->
	[];
evensTwo([X|Xs]) ->
	case X rem 2 == 0 of
		true -> [X | evensTwo(Xs)];
		_    -> evensTwo(Xs)
	end.


% Get an element from the list at index N.
index(0, [X|Xs]) ->
	X;
index(N, [X|Xs]) when N > 0 ->
	index(N - 1, Xs).


% Merging two lists together.
merge(Xs, []) ->
	Xs;
merge([], Ys) ->
	Ys;
merge([X|Xs], [Y|Ys]) when X =< Y ->
	[X | merge(Xs, [Y|Ys])];
merge([X|Xs], [Y|Ys]) ->
	[Y | merge([X|Xs], Ys)].
	

% Split the list into two separate lists, sort each half separately,
% and then join the list together in sorted order.
% NOT COMPLETE
mergeSort(N, [X|Xs]) ->
	{As, Bs} = lists:split(N, [X|Xs]).












