-module(foreach).
-export([main/1]).
main(_) ->
	Display = fun(X) -> io:fwrite("~w~n",[X]) end,
	lists:foreach(Display,	lists:seq(1,10)).