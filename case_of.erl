-module(caseex).


main(_) ->
	X = 15,
	case X of
		20 -> io:format("done");
		15 -> io:format("doing");
		_ -> io:format("not done")
	end.