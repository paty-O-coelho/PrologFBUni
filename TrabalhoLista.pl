/*(1)
Calcule o quadrado de N somando números ímpares, segundo a fórmula:
N² = 1 + 3 + 5 + ... + 2*N-1

(2)
Retorne o último elemento de uma lista dada.
ultimo(X,[X]).
ultimo(X,[_|Y]):-
    ultimo(X,Y).

(3)
Retorne a sublista contendo todos menos o último elemento de uma lista
dada.



(4)
Retorne a concatenação de duas listas dadas.
append([1,2,3],[4,5,6],W)

concatenar([], Lista,Lista).
concatenar([Elem|Lista1],Lista2, [Elem|Lista3]) :-
	concatenar(Lista1,Lista2,Lista3).

(5)
Retorne o reverso de uma lista. 

inverter([],[]).
inverter([Cabeca|Cauda],Lista):-
	inverter(Cauda,Cauda1),
    append(Cauda1,[Cabeca],Lista).
    
    
6)
Verifique se um elemento está numa lista dada.

pertence(X,[X|_]).
pertence(X,[_|Z]) :-
	pertence(X,Z).


(7)
Acrescente um elemento a uma lista se ele já não estiver nela.


(8)
Faça a união de duas listas.  Suponha que as listas vêm sem
elementos repetidos, e devolva uma solução sem elementos repetidos.



(9)
Faça a intersecção de duas listas.  Suponha que as listas vêm sem
elementos repetidos, e devolva uma solução sem elementos repetidos.

(10)
Dadas duas listas, retorne os elementos que estão na primeira lista
mas não estão na segunda.    

*/



concatenar([], Lista,Lista).
concatenar([Elem|Lista1],Lista2, [Elem|Lista3]) :-
	concatenar(Lista1,Lista2,Lista3).



retirar_todas(_, [],[]).
retirar_todas(Elem, [Elem|Cauda],L) :-
	retirar_todas(Elem,Cauda,L).
retirar_todas(Elem, [Elem1|Cauda],[Elem1|Cauda1]):-
	Elem \== Elem1,
	retirar_todas(Elem, Cauda, Cauda1).


retirar_rep([],[]).
retirar_rep([Elem|Cauda], [Elem|Cauda1]):-
	retirar_todas(Elem,Cauda,Lista),
	retirar_rep(Lista,Cauda1).



uniao_conj([],[],L).
uniao_conj(L1,L2,L) :- 
	concatenar(L1,L2,L3),
	retirada_rep(L3,U).












