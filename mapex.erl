-module(mapex).
-export([main/1]).
main(_) ->
	M = #{"a"=>34,"b"=>345},
	io:format("~p ~n",[maps:get("b",M)]),
	io:format("~p",[maps:find("b",M)]).