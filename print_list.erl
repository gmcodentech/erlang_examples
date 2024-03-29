-module(print_list).
-export([main/1]).
main(_) ->
	L = [1,2,3,4,5,6,7],
	io:format("~p",[L]).