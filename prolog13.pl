		can_divide(A, B) :- A mod B =:= 0.
		can_divide(A, B) :- B * B < A, B1 is B + 1, can_divide(A, B1).
		prime(2).
		prime(3).
		prime(X) :- not(can_divide(X, 2)).
