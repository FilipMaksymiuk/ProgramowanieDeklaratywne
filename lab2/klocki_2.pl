%PROGRAM: klocki_2
%Baza wiedzy o uk³adzie klocków
%Definiowane predykaty
%na/2
%   pod/2
%  miêdzy/3
% =========================================

%na(X,Y)
%opis:spe³niony, gdy klocek x le¿y
%bezpoœrednio na klocku Y
% POD(X,Y)
% opis: spe³niony, gdy klocek x le¿y
% bezpoœrednio pod klockiem Y
% miêdzy(X,Y,Z)
% opis: spe³niony, gdy klocek x le¿y miêdzy
% klockami Y i Z
% ------------------------------------na/2
  na(c,a).
  na(c,b).
  na(d,c).
       pod(X,Y):-na(Y,X).
     miêdzy(X,Y,Z):-na(Z,X),na(X,Y).
     miêdzy(X,Y,Z):-na(Y,X),na(X,Z).
%-------------------------------------na/2

/*
Informacje o budowie programu:
Program sk³ada sie z 6 klauzul.
Program zawiera 3 definicje relacji.
S¹ to relacje na/2, pod/2 i miêdzy/3
Definicja relacji na/2 sk³ada sie z
3 klauzul, które s¹ faktami.
Definicja relacji pod/2 sk³ada sie z 1
klauzuli, które s¹ regu³ami.
*/
