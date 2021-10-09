predicates
	start
	square(integer)
	squareroot(integer)

clauses
start:-write("Enter the number: "),
		readint(A),
		square(A),nl,
		squareroot(A),nl.

square(A):-C=A*A,
		write("Square of ",A," is ",C).
		
squareroot(A):-B=sqrt(A),
		K=round(B),
		C=K*K,
		A=C,
		write("Square root of ",A," is ",B),!.
		
squareroot(A):-write("Square root of ",A," is not number").