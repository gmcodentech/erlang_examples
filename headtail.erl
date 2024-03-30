-module(headtail).
-export([main/1]).

total([]) -> 0;
total([H|T]) -> H+total(T).

main(_) ->
	L = [1,2,3,4,5,6],
	N = [8|L],  %% N will be [8,1,2,3,4,5,6]
	T = total(N),
	io:format("~w",[T]).