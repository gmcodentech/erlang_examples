-module(guard).
-export([main/1]).
display(N) when N > 10 ->
	io:fwrite("greater");

display(N) when N < 10 ->
	io:fwrite("less").

main(_) ->
 display(100).
	