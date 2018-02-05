-module(practice).
-export([triArea/3, maxThree/3, howManyEqual/3, beat/1, lose/1, pieces/1, doubleAll/1]).

% Calculates a traingle area.
triArea(A, B, C) ->
	S = (A + B + C)/2,
	math:sqrt(S * (S - A) * (S - B) * (S - C)).


% Calculates the maximum number out of three given numbers.
maxThree(A, B, C) ->
	max(A, max(B, C)).


% How many equal
howManyEqual(X, X, X) -> 3;
howManyEqual(Y, X, X) -> 2;
howManyEqual(X, X, Y) -> 2;
howManyEqual(X, Y, X) -> 2;
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


% Doubling all the numbers in a list
doubleAll([]) ->
	[];
doubleAll([X|Xs]) ->
	[X * 2 | doubleAll(Xs)].



