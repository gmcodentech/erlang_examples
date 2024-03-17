-module(spawn_receive).
-export([start/0,display/0]).

start() ->
	spawn(spawn_receive,display,[]).

display() ->
	receive
		X -> io:format("Displaying ~w ~n",[X])
	end,
	display().