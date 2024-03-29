-module(strlen).
-export([main/1]).
main(_) ->
	io:format("~w",[length("I am a string value")]).