-module(sum_two).
-export([main/1,two_sum/2]).
-spec two_sum(Nums :: [integer()], Target :: integer()) -> [integer()].
two_sum(Nums, Target) ->
    try
        lists:foldl(
            fun(Value, {Index, Dict}) -> 
                case dict:find(Target - Value, Dict) of
                    error ->
                        {Index + 1, dict:append(Value, Index, Dict)};
                    {ok, ComplementIndex} ->
                        throw([Index, hd(ComplementIndex)])
                end
            end, {0, dict:new()}, Nums)
    catch
        _:Solution:_ ->
            Solution
    end.



main(_) ->
	L = [12,23,2,35,7],
	F = fun(Value,{A,X}) -> 
			{A+1,lists:append(X,[Value*3])}
		 end,
	R = lists:foldl(F,{0,[]},L),
	io:format("~p",[R]). 
	
	%%Output: {5,[36,69,6,105,21]}