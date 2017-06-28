% remove(+Elem,+Lista,-ListaNoua)
remove(E,[E|R],R).
remove(E,[F|R],[F|L]):- remove(E,R,L).
 
% perm(+Lista,-Permutare)
perm([],[]).
perm([F|R],P):- perm(R,P1), remove(F,P,P1).

min(X, Y, M) :- X =< Y, M is X.
min(X, Y, M) :- X > Y, M is Y.

min2(X, Y, M) :- X =< Y, M = X.
min2(X, Y, M) :- X > Y, M = Y.

min3(X, Y, X) :- X =< Y.
min3(X, Y, Y) :- X > Y.
