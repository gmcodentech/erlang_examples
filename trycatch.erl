-module(trycatch).

main(_) ->
	try
		A = 1,
		B = 0,
		
		R = A/B,
		io:format("~w ~n",[R])
	catch
		_: Error :_ -> io:format("~w",[Error])
	end.