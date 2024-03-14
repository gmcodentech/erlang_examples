-module(spawnex).

display(X) -> _ = X.


main(_) ->
	F = fun(_) -> spawn(fun() -> display(32) end) end,
	lists:foreach(F,lists:seq(1,1000000)),
	{ok,[_]} = io:fread("Enter","~d").