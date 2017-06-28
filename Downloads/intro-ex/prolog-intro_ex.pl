%% -----------------------------------------------------------------------------
%% -----------------------------------------------------------------------------
%% Atenție la semnăturile predicatelor și la specificarea parametrilor
%% p(+Arg1, -Arg2, ?Arg3)
%%  * Arg1 va fi instanțiat atunci când se va încerca satisfacerea p/3
%%  * Arg2 se va instanția odată cu satisfacerea p/3
%%  * Arg3 va putea fi instanțiat sau nu atunci când se va satisface p/3:
%%
%% Interogați Prolog cu "checkXX." pentru a verifica rezolvarea exercițiului XX.
%% Pentru a vedea progresul general, trimiteți scopul "check.".
%% -----------------------------------------------------------------------------
%% -----------------------------------------------------------------------------


%% -----------------------------------------------------------------------------
%% 1. (1p)
%% myConcat/3 myConcat(?List1, ?List2, ?List) 'List' este lista
%% formată prin concatenarea listelor 'List1' și 'List2'.

myConcat([], List, List).
myConcat([Head|Tail1], List, [Head|Tail2]) :- myConcat(Tail1, List, Tail2).


check1:-
    tests(1, [
        (myConcat([], [], La), La == []),
        (myConcat(L1b, [1,2], [1,2]), L1b == []),
        (myConcat([1,2,3], L2c, [1,2,3,4,5]), L2c == [4, 5]),
        (myConcat([a, b, c], [d], [a, b, c, d])),
        (myConcat([X1, X2], [X1, X2], [1, 2, 1, 2])),
        (\+ myConcat([X1, X2], [X1, X2], [1, 2, 3, 4])),
        (findall(L3, myConcat([_,_,_], [_], L3), [_])),
        (findall(L4, myConcat([_,_,_], L4, [_,_,_,_]), [_])),
        (myConcat([X51],[X52],[X53,X54]), X51 == X53, var(X51), X52 == X54, var(X54))]).

%% -----------------------------------------------------------------------------
%% 2. (1p)
%% myReverse/2
%% myReverse(?List, +RevList)
%% 'RevList' este o listă ce conține elementele listei 'List' în ordine inversă.
%% Regulile pot conține și predicatul myConcat/3.

myReverse([],[]).
myReverse([Elem|Tail], List) :- myReverse(Tail, T), myConcat(T, [Elem], List).

check2:-
    tests(2, [
        (myReverse([], []), !),
        (myReverse([1,2,3], [3,2,1])),
        (myReverse([1,2,3], Rev3), Rev3 == [3,2,1]),
        (myReverse(List4, [3,2,1]), List4 == [1,2,3]),
        (myReverse([1,X2,X3], [3,2,X1]), X1 == 1, X2 == 2, X3 == 3),
        (myReverse([Y1,Y2], L5), L5 == [Y2, Y1], var(Y1), var(Y2)),
        (myReverse(L6, [Z6]), L6 == [Z6], var(Z6)),
        (findall(L7, myReverse([_,_], L7), [_]))]).

%% -----------------------------------------------------------------------------
%% 3. (0.5p)
%% myReverseAcc/2
%% myReverseAcc(?List, ?Acc, ?RevList)
%% 'RevList' este o listă ce conține elementele listei 'List' în ordine inversă
%% și elementele listei 'Acc'.
%% (Indicație: 'Acc' se va comporta precum un acumulator)
%% Regulile nu trebuie să conține alte predicate (în afară de "cut" și ",").

myReverseAcc([],[],[]).
myReverseAcc([], List, List).
myReverseAcc([Elem|Tail], Acc, Result) :- myReverseAcc(Tail, [Elem| Acc], Result).


check3:-
    tests(3, [
        (myReverseAcc([], [], [])),
        (myReverseAcc([1,2,3], [0], [3,2,1,0])),
        (myReverseAcc([1,2,3], [0], Rev3), Rev3 == [3,2,1,0]),
        (myReverseAcc(List4, [0], [3,2,1,0]), List4 == [1,2,3]),
        (myReverseAcc([X2,1], [3], [X1,2,3]), X1 == 1, X2 == 2)]).

%% -----------------------------------------------------------------------------
%% -----------------------------------------------------------------------------
%% 4. (1p)
%% extract/4
%% extract(+List, +Start, +End, -Range)
%% 'Range' reprezintă lista formată din elementele listei 'List' aflate
%% pe pozițiile din intervalul 'Start' .. 'End'. 'Start' va fi întotdeauna
%% mai mic decât 'End'. Primul element se află pe poziția 0. Dacă 'End'
%% depășește lungimea listei, 'Range' va conține toate elementele de la 'Start'
%% la finalul listei.

% ??????????????????????
extract([],_,_,[]).
extract([Elem|Tail], 0, End, [Elem|Rest]) :- End1 is End - 1, extract(Tail, 0, End1, Rest).
extract([_|Tail], Start, End, Result) :- Start1 is Start - 1, extract(Tail, Start1, End, Result).

check4:-
    tests(4, [
        (extract([a,b,c,d,e], 0, 3, [a,b,c,d])),
        (extract([a,b,c,d,e], 1, 10, [b,c,d,e])),
        (extract([a,b,C,D,e], 2, 4, [c,d,e]), C == c, D == d),
        (extract([a,b,C1,D1,e], 2, 4, [C2,D2,e]), C1 == C2, D1 == D2),
        (extract([a,b,c,_,d], 3, 4, [X,X]))]).

%% -----------------------------------------------------------------------------
%% -----------------------------------------------------------------------------
%% 5. (1p)
%% factorial/2
%% factorial(+N, -Fact)
%% 'Fact' este factorialul lui 'N'.
%% N va fi mereu legat la un număr natural.

factorial(0, 1).
factorial(N,Fact) :- N > 0, N1 is N - 1, factorial(N1, Fact1), Fact is N * Fact1.

check5:-
    tests(5, [
        (factorial(1, F1), F1 == 1),
        (factorial(4, F2), F2 == 24),
        (factorial(5, 120)),
        (factorial(6, 720)),
        (factorial(7, 5040))]).

%% -----------------------------------------------------------------------------
%% 6. (0.5p)
%% factorial2/2
%% factorial2(?N, ?Fact)
%% 'Fact' este factorialul lui 'N'.
%% Cel puțin unul dintre cele două argumente trebuie să fie legat la un număr.

factorial2(0, 1).
factorial2(N, Fact) :- factorial2(N1, Fact1), N is N1 + 1, Fact is Fact1 * N.

check6:-
    tests(6, [
        (factorial2(2, F1), F1 == 2),
        (factorial2(4, F2), F2 == 24),
        (factorial2(N3, 120), N3 == 5),
        (factorial2(N4, 720), N4 == 6),
        (factorial2(7, 5040))]).

%% -----------------------------------------------------------------------------
%% 7. (1p)
%% fib/2
%% fib(+N, -Fibo)
%% 'Fibo' este nr lui fibonacci din 'N' repetitii.
%% N va fi mereu legat la un număr natural.

fib(0,0).
fib(1, 1).
fib(N, Fibo) :- N > 1, N1 is N - 1, N2 is N - 2, fib(N1, Fibo1), 
                                                fib(N2, Fibo2),
                                                Fibo is Fibo1 + Fibo2.

check7:-
    tests(7, [
        (fib(0, 0)),
        (fib(1, 1)),
        (fib(13, F), F == 233),
        (fib(15, 610))]).

%% -----------------------------------------------------------------------------

%% -----------------------------------------------------------------------------
%% 8. (1p)
%% palindrom/2
%% palindrom(+List)
%% 'List' este un palindrom.

palindrom(List) :- myReverse(List, List).

check8 :-
    tests(8, [
        (palindrom([1,2,3,2,1])),
        (palindrom([1,2,3,3,2,1])),
        (\+ palindrom([1,2,3,0,2,1])),
        (palindrom([1,2,3,X3,X2,X1]), X3 == 3, X2 == 2, X1 == 1),
        (\+ palindrom([1,2,3,X,_,X]))]).

%% -----------------------------------------------------------------------------


%% -----------------------------------------------------------------------------
%% 9. (1p)
%% sublista/2
%% sublista(+List, ?SubList)
%% 'SubList' este o sublistă a lui 'List' ('SubList' poate fi obținută prin
%% eliminarea a zero sau mai multe elemente din 'List'
% sublista(_, []).

sublista(List, List).
sublista([Elem|Tail], [Elem|List]) :- sublista(Tail, List).
sublista([_|Tail], List) :- sublista(Tail, List).


check9 :-
    tests(9, [
        (sublista([1,2,3,4,5],[2,3,4])),
        (sublista([1,2,3,4,5],[1,2,3,4,5])),
        (\+ sublista([1,2,3,4,5],[2,1,4])),
        (findall(S4, sublista([1,2,3], S4), All4)),
        (sort(All4, [[],[1],[1,2],[1,2,3],[1,3],[2],[2,3],[3]])),
        (sublista([X1,X2,X3],[Y1,Y2,Y3]), X1==Y1, X2==Y2, X3==Y3)]).

%% -----------------------------------------------------------------------------


%% -----------------------------------------------------------------------------
%% -----------------------------------------------------------------------------
%% Se dau următoarele fapte ce descriu arcele unei păduri de arbori binari.
%% Fiecare nod poate avea maxim doi fii.

nod(a). nod(b). nod(c). nod(d). nod(e). nod(f). nod(g).
nod(h). nod(i). nod(j). nod(k). nod(l).
nod(m).
nod(n). nod(p). nod(o).

%% -----------------------------------------------------------------------------
%% arc/2

arc(a,b). arc(a,c). arc(b,d). arc(c,e). arc(c,g). arc(e,f).
arc(h,i). arc(h,j). arc(i,k). arc(j,l).
arc(n,o). arc(o,p).

%% -----------------------------------------------------------------------------
%% 10. (1p)
%% isLeaf/1
%% isLeaf(?Nod)

isLeaf(Nod) :- nod(Nod), \+ arc(Nod, _).

check10 :-
    tests(10, [
        (isLeaf(d), isLeaf(f), isLeaf(g), isLeaf(k), isLeaf(l)),
        (isLeaf(m), isLeaf(p)),
        (\+ isLeaf(a), \+ isLeaf(b), \+ isLeaf(c), \+ isLeaf(e)),
        (findall(X, isLeaf(X), L), length(L, 7))]).


%% -----------------------------------------------------------------------------
%% 11. (1p)
%% isRoot/1

isRoot(Nod):- nod(Nod), \+ arc(_, Nod).

check11 :-
    tests(11, [
        (isRoot(a), isRoot(h), isRoot(m), isRoot(n)),
        (\+ isRoot(b), \+ isRoot(d), \+ isRoot(e), \+ isRoot(l)),
        (findall(X, isRoot(X), L), length(L, 4))]).


%% -----------------------------------------------------------------------------
%% 12. (bonus: 1p)
%% descendantOf/2
%% descendantOf(?X,?Y)
%% Nodul X este un urmaș a lui Y.

descendantOf(X, Y):- arc(Y, X).
descendantOf(X, Y):- arc(Y, W), descendantOf(X, W).

check12:-
    tests(12, [
        (descendantOf(b,a), descendantOf(c,a), descendantOf(d,b)),
        (descendantOf(j,h), descendantOf(l,j)),
        (descendantOf(j,h), descendantOf(f,a)),
        (\+ descendantOf(a,_), \+ descendantOf(h,_), \+ descendantOf(m,_)),
        (findall(X1, descendantOf(X1,a), L1), length(L1, 6)),
        (findall(X2, descendantOf(X2,h), L2), length(L2, 4)),
        (findall(X3, descendantOf(l,X3), L3), length(L3, 2)),
        (findall(X4, descendantOf(f,X4), L4), length(L4, 3))]).

%% -----------------------------------------------------------------------------
%% 13. (bonus: 1p)
%% descendants/2
%% descendants(?Nod, ?N)
%% Nodul Nod are N urmași.

descendants(X, 0) :- isLeaf(X).
descendants(X, N):- arc(X, A), \+ ((arc(X, B), A \= B)), descendants(A, Na), N is Na + 1.
descendants(X, N) :- arc(X, A), arc(X, B), A \= B, 
                        descendants(A, Na), descendants(B, Nb), N is Na + Nb + 2.

check13:-
    tests(13, [
        (descendants(a, 6), descendants(b, 1)),
        (descendants(a, N1), N1 == 6),
        (descendants(c, 3), descendants(h, 4)),
        (descendants(g, 0), descendants(l, 0)),
        (findall(X1, descendants(X1, 1), L), sort(L, [b,e,i,j,o])),
        (findall(X2, descendants(X2, 2), L2), sort(L2, [n]))]).


%% -----------------------------------------------------------------------------
%% 14. (bonus: 2p)
%% height/2
%% height(?Nod, ?H).
%% O frunză are înălțime 0.

maxim(X, Y, X) :- X >= Y, !.
maxim(X, Y, Y).

height(X, 0) :- isLeaf(X).
height(X,H) :-arc(X, A), \+ ((arc(X, B), A \= B)), height(A, Ha), H is Ha + 1.
height(X, H) :- arc(X, A), arc(X, B), A \= B, height(A, Ha), height(B, Hb), maxim(Ha, Hb, Hmax), H is Hmax + 1.

check14:-
    tests(14, [
        (height(a,N1), N1 == 3),
        (height(a,3), height(b,1), height(m,0)),
        (height(X3,3), X3 == a),
        (findall(X4, height(X4, 1), L4), sort(L4, [b,e,i,j,o])),
        (findall(X5, height(X5, 2), L5), sort(L5, [c,h,n]))]).

%% -----------------------------------------------------------------------------
%% 15. (bonus: 1p)
%% isBalanced/1
%% isBalanced(?Nod)
%% Un nod este echilibrat dacă diferența dintre înălțimile fiilor este
%% cel mult 1.

isBalanced(X) :- isLeaf(X).
isBalanced(X) :- arc(X, A), \+((arc(X, B), A \= B)), height(A, 0).
isBalanced(X) :- arc(X, B), arc(X, A), A\=B, height(A, Ha), height(B, Hb), (Ha =:= Hb; Ha =:= Hb - 1; Ha - 1 =:= Hb).

check15:-
    tests(15, [
        (isBalanced(a), isBalanced(h), isBalanced(m)),
        (\+ isBalanced(n)),
        (findall(X, isBalanced(X), L), sort(L, [a,b,c,d,e,f,g,h,i,j,k,l,m,o,p]))]).


%% ----------------------------------------
%% ----------------------------------------

:-dynamic(punct/2).

tests(Ex, [], _) :- !, format('Exercitiul ~w a fost rezolvat corect.~n', [Ex]).
tests(Ex, [T | R], Idx) :-
        Idx1 is Idx + 1,
        (   call(T), !, write('.'), tests(Ex, R, Idx1);
        format('Esec la exercitiul ~w testul ~w: ~n    ~w~n',
               [Ex, Idx1, T]),
            !, fail).
tests(Ex, L) :- tests(Ex, L, 0).

check:-
        retractall(punct(_, _)),
        once((check1, assert(punct(1, 1)) ; assert(punct(1, 0)))),
        once((check2, assert(punct(21, 1)) ; assert(punct(21, 0)))),
        once((check3, assert(punct(22, 0.5)) ; assert(punct(22, 0)))),
        once((check4, assert(punct(1, 1)) ; assert(punct(3, 0)))),
        once((check5, assert(punct(41, 1)) ; assert(punct(41, 0)))),
        once((check6, assert(punct(42, 0.5)) ; assert(punct(42, 0)))),
        once((check7, assert(punct(5, 1)) ; assert(punct(5, 0)))),
        once((check8, assert(punct(6, 1)) ; assert(punct(6, 0)))),
        once((check9, assert(punct(71, 1)) ; assert(punct(71, 0)))),
        once((check10, assert(punct(72, 1)) ; assert(punct(72, 0)))),
        once((check11, assert(punct(73, 1)) ; assert(punct(73, 0)))),
        once((check12, assert(punct(74, 1)) ; assert(punct(74, 0)))),
        once((check13, assert(punct(75, 2)) ; assert(punct(75, 0)))),
        once((check14, assert(punct(76, 1)) ; assert(punct(76, 0)))),
        once((check15, assert(punct(8, 1)) ; assert(punct(8, 0)))),
        fail.
check:-
        findall(P, punct(_, P), L),
        sum_list(L, S),
        format('Punctaj total: ~f~n',[S]).
