-module(dictionary).

main(_) ->
	D = dict:new(),
	D1 = dict:append(1,100,D),
	D2 = dict:append(2,200,D1),
	case dict:find(2,D2) of
		error -> io:format("~w",[error]);
		{ok,Value} -> io:format("~w",[Value])
	end.