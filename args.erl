-module(args).
-export([main/1]).
main(Args) ->
	io:format("Args: ~p\n", [Args]).