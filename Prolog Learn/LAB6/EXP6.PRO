domains
predicates
	start
	rule(integer)
	usecut(symbol)
	student(symbol,symbol)
clauses
	start:-write("*-MENU-*"),nl,
	write("1.Display List of allStudents"),nl,
	write("2.Display Students of perticular Given Branch"),nl,
	write("3.Display List of Students not belongs branch(use not predicate)"),nl,
	write("4.Display List of Students not belongs ec branch(use cut(!) predicate)"),nl,
	write("Enter the option"),nl,
	readint(C),nl,rule(C).
	rule(1):-student(X,Y),write(X,"-",Y,"\n"),fail.
	rule(1):-write("continue?"),
	readln(A),nl,
	A="y",
	start.
	rule(2):-write("Enter name of branch for which student list needed"),nl,
	readln(B),nl,
	student(N,B),
	write(N,"-",B,"\n"),
	fail.
	rule(2):-write("continue?"),
	readln(A),nl,
	A="y",
	start.
	rule(3):-write("Enter branch name to be excluded from result"),nl,
	readln(BR),
	student(N,X),
	not(BR=X),
	write(N,"-",X,"\n"),
	fail.
	rule(3):-write("continue?"),
	readln(A),nl,
	A="y",
	start.
	rule(4):-student(N,BR),usecut(BR),write(N,"-",BR,"\n"),fail.
	rule(4):-write("continue?"),
	readln(A),nl,
	A="y",
	start.
	usecut(ec):-!,fail.
	usecut(_).
	student(darshak,it). 
	student(anjan,ce). 
	student(arya,civil). 
	student(rohit,it). 
	student(mohit,civil). 
	student(nihar,ec).