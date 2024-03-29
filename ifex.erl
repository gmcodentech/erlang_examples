-module(ifex).
-export([main/1]).

main(_) ->
	X = 3,
	Y = 34,
	if 
		X < Y -> io:format("less")
	end.