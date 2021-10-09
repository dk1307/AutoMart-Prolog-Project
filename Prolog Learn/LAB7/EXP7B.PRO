domains
predicates
	start
	fibo(integer,integer,integer)
clauses
start:-write("enter num: "),readint(N),nl,
	fibo(N,0,1).
	
fibo(1,_,C):-write(C),nl.
fibo(P,Q,R):-write(R," "),S=Q+R,T=R,A=P-1,
		fibo(A,T,S).