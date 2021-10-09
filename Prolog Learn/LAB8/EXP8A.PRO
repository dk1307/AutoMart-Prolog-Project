predicates
	start
	max(integer,integer,integer)
	min(integer,integer,integer)
	equal(integer,integer,integer)

clauses
start:-	write("number 1: "),readint(A),nl,
	write("number 2: "),readint(B),nl,
	write("number 3: "),readint(C),nl,
	max(A,B,C),nl,
	min(A,B,C),nl,
	equal(A,B,C).
	
max(P,Q,R):-P>=Q,P>=R,write("maximum:"),
	write(P),nl.
max(P,Q,R):-P<=Q,Q>=R,write("maximum:"),
	write(Q),nl.
max(P,Q,R):-R>=Q,R>=P,write("maximum:"),
	write(R),nl.

min(P,Q,R):-P<=Q,P<=R,write("minimum:"),
	write(P),nl.
min(P,Q,R):-Q<P,Q<R,write("minimum:"),
	write(Q),nl.
min(P,Q,R):-R<=Q,R<=P,write("minimum:"),
	write(R),nl.

	
equal(P,Q,R):-P=Q,Q=R,P=R,write("all numbers same"),nl.
