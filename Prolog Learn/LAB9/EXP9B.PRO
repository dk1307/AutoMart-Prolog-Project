domains
	list=integer*
predicates
	even_odd(list,list,list)
clauses
	even_odd([],[],[]).
	even_odd([X|Tail],[X|Even],Odd):-C=X mod 2,C=0,even_odd(Tail,Even,Odd).
	even_odd([X|Tail],Even,[X|Odd]):-C=X mod 2,C=1,even_odd(Tail,Even,Odd).