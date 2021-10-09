domains
	name,branch,sem,P=symbol
database
	student(name,branch,sem,P)
predicates
	start
	rule(integer)
	continue(symbol)
clauses
	start:-write("**MENU**"),nl,
	write("1.Enter new student details"),nl,
	write("2.Delete a student data"),nl,
	write("3.Display specific student details"),nl,
	write("4.List of students having % greater than specified%"),nl,
	write("5.Display all the students"),nl,
	write("6.Exit"),nl,
	write("Enter your choice:-"),readint(X),rule(X),
	write("Heyy Do you want to continue with menu? (y/n) \n"),
	readln(Y),
	continue(Y).
	
	rule(1):-write("Enter name:"),readln(N),nl,
		write("Enter branch:"),readln(B),nl,
		write("Enter semester:"),readln(S),nl,
		write("Enter PER:"),readln(P),nl,
		asserta(student(N,B,S,P)),
		save("student.txt").
	rule(2):-write("Enter the student name to be deleted:"),
		readln(N),
		retract(student(N,_,_,_)),save("student.txt"),
		write("\nRecord Deleted Successfully"),nl.
	rule(3):-write("Enter name:"),
		readln(N),
		student(N,X,Y,Z),
		write("Name:",N," Branch:",X," sem:",Y," PER:",Z),nl.
	rule(4):-write("Enter minimum PER:"),readln(T),
		student(X,Y,Z,P),P>T,
		write("Name:",X," Branch:",Y," sem:",Z," PER:",P),nl,fail.
	rule(4).
	rule(5):-student(X,Y,Z,P),
		write("Name:",X," Branch:",Y," sem:",Z," PER:",P),nl,fail.
	rule(5).
	rule(6).

	continue(y):- start.