-module(receiver).

display() ->
	receive
		R -> io:format("\nThe value is ~w",[R])
	end.

main(_) ->
	Pid = spawn(fun() -> display() end),
	Pid ! 100891,
	{ok,[_]} = io:fread("\nEnter a key: ","~d").