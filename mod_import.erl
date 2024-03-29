-module(mod_import).
-import(mod,[start/0,add/2]).
-export([main/1]).

main(_) ->
	mod:start(),
	R = add(2,4),
	io:format("~w",[R]).