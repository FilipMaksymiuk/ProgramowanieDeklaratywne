f0(X,Y):-between(12,14,X),
    between(X,15,Y).
f0(16,16).

f(X,Y):-!,
    between(12,14,X),
    between(X,15,Y).
f1(16,16).

f2(X,Y):-between(12,14,X),
    !,
    between(X,15,Y).
f2(16,16).

f3(X,Y):-between(12,14,X),
    between(X,15,Y),
    !.
f3(16,16).
