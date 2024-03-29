-module(base64_encode).
-import(base64,[encode/1]).
-export([main/1]).

main(_) ->
	B = encode("admin:1234"),
	io:format("~s",[B]).