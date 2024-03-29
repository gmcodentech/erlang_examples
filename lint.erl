-module(lint).
-export([main/1]).
main(_) ->
	{ok,F}=file:list_dir("."),
	lists:foreach(fun(File) ->
		begin
		{ok,_}=compile:file(File,[report])
		end
	end,lists:filter(fun(N) -> filename:extension(N)==".erl" end ,F)).
