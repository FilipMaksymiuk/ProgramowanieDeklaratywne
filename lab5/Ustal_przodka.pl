rodzic(ewa, ani).
rodzic(piotr, ewa).

przodek(X, Y) :- rodzic(X, Y).
przodek(X, Y) :- rodzic(X, Z), przodek(Z, Y).

