domains
	city,state,person=symbol
predicates
	location(city,state)
	stays(person,city)
	rule(symbol,symbol)
clauses
	stays(darshak,jamnagar).
	stays(anjan,rajkot).
	stays(ayushi,jamnagar).
	stays(charmi,mumbai).
	location(jamnagar,gujarat).
	location(rajkot,gujarat).
	location(mumbai,maharashtra).

	
	rule(X,Z):-stays(X,Y),location(Y,Z).
