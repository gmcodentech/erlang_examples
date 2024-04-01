-module(fin).
 
get_int(S) -> list_to_integer(S).
 
get_months_diff(Dt1,Dt2) ->
	[Y1,M1,D1] = string:tokens(Dt1,[$/]), 
	[Y2,M2,D2] = string:tokens(Dt2,[$/]),
	Days_Difference=calendar:date_to_gregorian_days(get_int(Y2),get_int(M2),get_int(D2))-calendar:date_to_gregorian_days(get_int(Y1),get_int(M1),get_int(D1)), 	
	Days_Difference div 29.

get_months_cleared_and_pending_amt(Paid_Amt,Monthly_Amt,From,To)->
	Months_Diff = get_months_diff(From,To),
	Cleared_Months=math:floor(Paid_Amt/Monthly_Amt),
	Unadjusted_Amt = Paid_Amt-(Cleared_Months * Monthly_Amt),
	{Months_Diff,Cleared_Months,Unadjusted_Amt,((Months_Diff-Cleared_Months) * Monthly_Amt)-Unadjusted_Amt}.
 
main(_) ->
	Dt1 = "2024/01/01",
	Dt2 = "2024/03/22",
	Paid_Amt = 2250.0,
	Monthly_Amt = 1050.0,
	{M,C,U,P} = get_months_cleared_and_pending_amt(Paid_Amt,Monthly_Amt,Dt1,Dt2),
	io:format("Amount Paid: ~w, Monthly Maintenance Amount: ~w, From Date: ~s, To Date: ~s ~n",[Paid_Amt,Monthly_Amt,Dt1,Dt2]),
	Due_Amt = if P < 0 -> 0; true -> P end,
	io:format("Adjustment Months: ~w , Cleared Months Count : ~w , Unadjusted Amount: ~w , Due Amount: ~w",[M,C,U,Due_Amt]).