-module(dateex).
-export([main/1]).

main(_)->
	Date1 = calendar:local_time(),
	Date2 = {{2024,2,1},{15,45,20}},
	{{Y1,M1,D1},_}=Date1,
	{{Y2,M2,D2},_}=Date2,
	Days_Difference=calendar:date_to_gregorian_days(Y1,M1,D1)-calendar:date_to_gregorian_days(Y2,M2,D2),
	Months_Diff = Days_Difference div 29,
       io:format("Days: ~w Months: ~w",[Days_Difference,Months_Diff]).
       