-module(lista).

main(_) ->
	L = [1,2,3,4,5],
	R = [X || X <- L, X rem 2 =:= 1],
	io:format("~p",[R]).