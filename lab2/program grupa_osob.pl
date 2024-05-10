%Program Grupa_os�b
%Baza wiedzy o grupie os�b i ich upodobaniach
%Definiowane predykaty:
%lubi/2
%opis: lubi(X,Y)-spe�niony, gdy osoba x lubiu osob� Y
%jarosz/1
%opis: jarosz(X)-spe�niony ,gdy x jest jaroszem
%nie_pal�cy/1
%opis: nie_pal�cy(X)-spe�niony, gdy x nie pali papieros�w.
%lubi_czyta�/1
%opis: lubi_czyta�(X)-spe�nionyy, gdy x lubi czyta� ksi�zki
%uprawia_sport/1
%opis: uprawia_sport(X)-spe�nioy, gdy x uprawia sport
%-------------------------------------------------

jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawe�).
nie_pal�cy(ola).
nie_pal�cy(ewa).
nie_pal�cy(jan).
lubi_czyta�(ola).
lubi_czyta�(iza).
lubi_czyta�(piotr).
uprawia_sport(ola).
uprawia_sport(jan).
uprawia_sport(piotr).
uprawia_sport(pawe�).
lubi(ola,X):-jarosz(X),uprawia_sport(X).
lubi(ewa,X):-nie_pal�cy(X),jarosz(X).
lubi(iza,X):-lubi_czyta�(X).
lubi(iza,X):-uprawia_sport(X),nie_pal�cy(X).
lubi(jan,X):-uprawia_sport(X).
lubi(piotr,X):-jarosz(X),uprawia_sport(X).
lubi(piotr,X):-lubi_czyta�(X).
lubi(pawe�,X):-jarosz(X),uprawia_sport(X),lubi_czyta�(X).
/*
Program sk�ada sie z 22klauzul, 14fakt�w i 8 regu�.
Program sk�ada sie z 5 definicji relacji
*/
