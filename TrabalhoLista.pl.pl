%(1)
%Calcule o quadrado de N somando números ímpares, segundo a fórmula: N² = 1 + 3 + 5 + ... + 2*N-1
soma_impares(0,0) :- !.
soma_impares(N,S) :-
	N1 is N - 1,
	soma_impares(N1,S1),
	S is S1 + 2*N -1.

%(2)
%Retorne o último elemento de uma lista dada.
ultimo(X,[X]).
ultimo(X,[_|Cauda]):- ultimo(X,Cauda).

%(3)
%Retorne a sublista contendo todos menos o último elemento de uma lista dada.
menos_ultimo([_],[]).
menos_ultimo([X|Cauda], [X|Lista]) :- menos_ultimo(Cauda,Lista).

%(4)
%Retorne a concatenação de duas listas dadas.
concatenar([], Lista,Lista).
concatenar([Elem|Lista1],Lista2, [Elem|Lista3]) :-
	concatenar(Lista1,Lista2,Lista3).

%(5)
%Retorne o reverso de uma lista. 
inverter([],[]).
inverter([Cabeca|Cauda],Lista):-
	inverter(Cauda,Cauda1),
    append(Cauda1,[Cabeca],Lista).

%(6)
%Verifique se um elemento está numa lista dada.
pertence(X,[X|_]).
pertence(X,[_|Cauda]) :-
	pertence(X,Cauda).

%(7)
%Acrescente um elemento a uma lista se ele já não estiver nela.	
adicionar_nao_membro(X, Lista1, Lista2) :- member(X, Lista1), Lista2 = Lista1.
adicionar_nao_membro(X, Lista1, Lista2) :- not(member(X, Lista1)), add(X, Lista1, Lista2).

add(X,[],[X]).
add(X, [X1|Cauda1],[X1|Cauda2]) :- 
    add(X, Cauda1, Cauda2).

%(8)
%Faça a união de duas listas.  Suponha que as listas vêm sem elementos repetidos, e devolva uma solução sem elementos repetidos.
uniao([ ],Lista1,Lista1).
uniao([X|Lista1],Lista2,Lista3):-	member(X,Lista2),!,uniao(Lista1,Lista2,Lista3).
uniao([X|Lista1],Lista2,[X|Lista3]):-	uniao(Lista1,Lista2,Lista3).

%(9)
%Faça a intersecção de duas listas.  Suponha que as listas vêm sem elementos repetidos, e devolva uma solução sem elementos repetidos.
intersecao([],_,[]).
intersecao([X|Lista1],Lista2,[X|Lista3]):- member(X,Lista2), intersecao(Lista1,Lista2,Lista3).
intersecao([X|Lista1],Lista2, Lista3):-  not(member(X,Lista2)), intersecao(Lista1,Lista2,Lista3).


%(10)
%Dadas duas listas, retorne os elementos que estão na primeira lista mas não estão na segunda.    
primeira_nao_segunda([],_,[]).
primeira_nao_segunda([X|Lista1],Lista2,Lista3) :- member(X,Lista2), !,primeira_nao_segunda(Lista1,Lista2,Lista3).
primeira_nao_segunda([X|Lista1],Lista2,[X|Lista3]) :- primeira_nao_segunda(Lista1,Lista2,Lista3).