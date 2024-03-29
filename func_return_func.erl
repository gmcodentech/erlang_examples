-module(func_return_func).
-export([main/1]).
main(_) ->
	AdderFunc = fun(X) -> fun(Y) -> X + Y end end,
	Adder5 = AdderFunc(5),
	R = Adder5(10),
	io:format("~w",[R]).