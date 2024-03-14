-module(readex).

main(_) ->
	{ok,[X]} = io:read("Enter an integer","~d"),
	io:format("Thanks for your input ~w",[X]).