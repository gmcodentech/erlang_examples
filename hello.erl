-module(hello).
-export([main/1]).

main(_) ->
<<<<<<< HEAD
 _=234,
 io:fwrite("Hello").
=======
 X = 234,
 throw("some bad happened"),
 io:fwrite("Hello").
>>>>>>> 84539aca38c3438fd418c8ea6d3f1c914e4e6823
