domains
	item=item(integer,symbol,integer,integer)
database
	store(symbol,item)
predicates
	start
	go(integer)
	continue(symbol)
clauses
	start:-write("1. enter items\n"),
		write("2. display items\n"),
		readint(N),nl,go(N),
		write("Heyy Do you want to continue with menu? (y/n) \n"),
		readln(Y),
		continue(Y).
	go(1):-write("Enter item type:"),readln(T),nl,
		write("Enter item number:"),readint(I),nl,
		write("Enter item description:"),readln(D),nl,
		write("Enter quantity of item:"),readint(Q),nl,
		write("Enter cost of item:"),readint(C),nl,
		assertz(store(T,item(I,D,Q,C))),
		write("addedsuccessfully\n").
	go(2):-store(T,item(I,D,Q,C)),
		write("Type:",T," No.:",I," Desc.:",D," Quantity:",Q," Cost:",C),nl,fail.
	go(2).
	
	continue(y):- start.