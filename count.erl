<<<<<<< HEAD
-module(count).
-export([main/1]).

=======
-module(acc).
%test changed1
>>>>>>> 84539aca38c3438fd418c8ea6d3f1c914e4e6823
check(L) -> check(L,0).

check([],Acc) -> Acc;
check([_|T],Acc) -> check(T,Acc+1).

main(_) ->
	C = check([1,2,3,4,5]),
	io:format("~w",[C]).
