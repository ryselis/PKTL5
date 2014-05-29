flatten(X,[X]) :- not(is_list(X)).
flatten([],[]).
flatten([Head|Tail],Flattened) :- 
	flatten(Head,FlatHead), 
	flatten(Tail,FlatTail), 
	append(FlatHead,FlatTail,Flattened).