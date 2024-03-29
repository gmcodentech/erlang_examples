-module(list_apprehension).
-export([main/1]).
main(_) ->
	L = [1,2,3,4,5],
	R = [X || X <- L, X rem 2 =:= 1],
	io:format("~p",[R]).