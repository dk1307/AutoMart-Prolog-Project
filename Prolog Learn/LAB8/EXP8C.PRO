predicates
	start
	rule(integer)

clauses
start:-write("1. Sub String"),nl,
		write("2. String Concatination"),nl,
		write("3. String Tokaen"),nl,
		write("4. Length of String"),nl,
		write("5. Uppercase Lowercase"),nl,
		readint(N),nl,rule(N).
		
rule(1):-write("Enter String: "),readln(S),nl,
		write("Enter number of charcthers needed in substring: "),
		readint(K),nl,Frontstr(K,S,X,_),
		write("substring is: ",X),nl.
		

rule(2):-write("Enter String first: "),readln(S1),nl,
		write("Enter String second: "),readln(S2),nl,
		concat(S1,S2,S3),
		write("Concatination of String is: ",S3),nl.	
		
rule(3):-write("Enter String: "),readln(S),nl,
		Fronttoken(S,R,K),nl,
		write("Token is: ",R),nl,
		write("remaining string is: ",K),nl.
		
rule(4):-write("Enter String: "),readln(X),nl,
		str_len(X,Y),nl,
		write("length of string is: ",Y),nl.
		
rule(5):-write("Enter String: "),readln(X),nl,
		upper_lower(X,Y),nl,
		write("Lowercase: ",Y),nl,
		upper_lower(P,Y),nl,
		write("Uppercase: ",P),nl.