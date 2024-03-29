-module(read_stdin).
-export([main/1]).
main(_) ->
	{ok,[X]} = io:read("Enter an integer","~d"),
	io:format("Thanks for your input ~w",[X]).