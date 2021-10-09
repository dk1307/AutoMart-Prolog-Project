domains
predicates
	fact(integer,integer)
	fact(integer)
clauses
	fact(0,X):-X=1.
	fact(N,X):-M=N-1,fact(M,Y),X=Y*N.

	fact(N):-fact(N,X),write(X),nl.