-module(spawnex).
-export([main/1]).
display(X) -> _ = X.


main(_) ->
	F = fun(_) -> spawn(fun() -> display(32) end) end,
	lists:foreach(F,lists:seq(1,10)),
	{ok,[_]} = io:fread("Enter","~d").