-module(main).

main(_) ->
 X = 234,
 throw("some bad happened"),
 io:fwrite("Hello").
