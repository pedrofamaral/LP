%ex 1
estudante(eu).
trabalho(isto).
ama(X,Y) :- estudante(X), trabalho(Y).

%ex 2
%a)
pai(ivo, eva).
pai(gil, rai).
pai(gil, clo).
pai(gil, ary).
pai(rai, noe).
pai(ary, gal).
mae(ana, eva).
mae(bia, rai).
mae(bia, clo).
mae(bia, ary).
mae(eva, noe).
mae(lia, gal).
%b)
mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).
homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).
%c)
gerou(X,Y) :- pai(X,Y); mae(X,Y).

%ex 3
% a) [1,2,3,4,5] = [Head|Tail].
%    Head = 1
%    Tail = [2,3,4,5]
% b) [quod, licet, jovi, non, licet, bovi] = [_, X|_].
%    X = licet


%ex 4:
imprima([]).
imprima([H|T]) :- write(H), imprima(T).

%ex 5:
verificaNota([]).
verificaNota([H|T]) :- H < 30,write(H), write(' reprovado\n'), verificaNota(T).
verificaNota([H|T]) :- H < 60, write(H), write(' recuperacao\n'), verificaNota(T).
verificaNota([H|T]) :- H < 100, write(H), write(' aprovado\n'), verificaNota(T).

%ex 6:
contaVogal([], 0).
contaVogal([H|T], C) :-  ( H = a;H = e;H = i;H = o;H = u), contaVogal(T, C1), C is C1 + 1.
contaVogal([_|T], C) :-  contaVogal(T, C).
