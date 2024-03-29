-module(tuple).
-export([main/1]).
%This is a comment
main(_) ->
	{A,S} = {3394,"Code"},
	io:format("~w  and ~s",[A,S]).