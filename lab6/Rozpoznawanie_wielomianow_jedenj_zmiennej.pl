% Rozpoznawanie wielomianów jednej zmiennej
% o wspó³czynnikach liczbowych

/*
Definicja: rekurencja strukturalna

1) x jest wielomianem zmiennej x
   c- liczba jest wielomianej dowolnej zmiennej


2) Je¿eli w, w1, w2 s¹ wielomianami zm. x to
   -w, w1+w2, w1-w2, w1*w2, w^n (N-liczba naturalna)
   s¹ wielomianami zmiennej x

*/

%wielomian(w,x)
%spe³niony, gdy w jest wielomianem zmiennej x
%o wspó³czynnikach liczbowych
%definicja rekurencyjna


%warunki zakoñczenia rekurencji
 wielomian(X,X).
 wielomian(C,_):-number(C).

%rekurecnja
 wielomian(-W,X):-wielomian(W,X).
 wielomian(W1+W2,X):-wielomian(W1,X),
         wielomian(W2,X).
 wielomian(W1-W2,X):-wielomian(W1,X),
         wielomian(W2,X).
 wielomian(W1*W2,X):-wielomian(W1,X),
         wielomian(W2,X).
 wielomian(W^N,X):-integer(N),
         N>1,
         wielomian(W,X).
/*
Sesja prologowa

1 ?- wielomian(0,x).
true

2 ?- wielomian(5,x).
true

3 ?- wielomian(5,y).

4 ?- wielomian(x,x).
true;
false

5 ?- wielomian(2*x+1,x).
true;
false.

6 ?- wielomian(x^3,x).
true;
false.

7 ?- wielomian((2*x^3+x)^3*(x+3),x).
true;
false.

8 ?-wielomian(x^(-3),x).
false.

*/
