-module(practice).
-export([triArea/3, maxThree/3, beat/1, lose/1, result/2]).

% Calculates a traingle area with three sides.
triArea(A, B, C) ->
	S = (A + B + C)/2,
	math:sqrt(S * (S - A) * (S - B) * (S - C)).


% Calculates the maximum number out of three given numbers.
maxThree(A, B, C) ->
	max(A, max(B, C)).


% Rock, papper and scissors game.
beat(X) when X == rock ->
	paper;
beat(X) when X == paper ->
	scissors;
beat(X) when X == scissors ->
	rock;
beat(X) when X =/= rock andalso X =/= paper andalso X =/= scissors ->
	io:fwrite("Incorrect option. ").


lose(X) when X == rock ->
	scissors;
lose(X) when X == paper ->
	rock;
lose(X) when X == scissors ->
	paper;
lose(X) when X =/= rock andalso X =/= paper andalso X =/= scissors ->
	io:fwrite("Incorrect option. ").
