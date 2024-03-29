-module(funct).
-export([main/1]).

addtwo(A,B) ->
 io:fwrite("~w",[A+B]).

main(_) ->
 addtwo(29090909099090903,23).