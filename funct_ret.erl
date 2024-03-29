-module(funct_ret).
-export([main/1]).

addtwo(A,B) -> A + B.

main(_) ->
 R = addtwo(27878783,4),
 io:fwrite("~w",[R]).