-module(spawn_rpc).

-export([start/0,loop/0]).

start()->
	spawn(spawn_rpc,loop,[]).
	

loop() ->
	receive
		{rectangle,Width,Height} -> io:format("Area of rectangel is ~w ~n",[Width*Height]), loop();
		{square,Side} -> io:format("Area of square is ~w ~n",[Side * Side]),loop()
	end.