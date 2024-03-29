-module(trycatch).
-export([main/1]).
main(_) ->
	try
		A = 1,
		B = 30, %make this 0 to get an exception
		
		R = A/B,
		io:format("~w ~n",[R])
	catch
		_: Error :_ -> io:format("~w",[Error])
	end.