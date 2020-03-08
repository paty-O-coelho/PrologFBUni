genitor(pam,bob).
genitor(tom,bob). % Tom é pai de Bob
genitor(tom,liz).
genitor(bob,ana).
genitor(bob,pat).
genitor(liz,bill).
genitor(pat,jim).

mulher(pam).
mulher(liz).
mulher(pat).
mulher(ana).

homem(tom).
homem(bob).
homem(jim).
homem(bill).


irmao(Y, X) :- 
 genitor(P, X), genitor(P, Y), X\=Y,
 homem(Y).


irma(Y, X) :- 
 genitor(P, X), genitor(P, Y), X\=Y,
 mulher(Y).



%1.a mãe de Jim,
%genitor(Mae, jim), mulher(Mae).

%2.o avô materno de Jim,
%genitor(Pai, pat),homem(Pai). (genitor(Mae, jim), mulher(Mae), genitor(Avo, Mae),homem(Avo).)


%3.o bisavô materno de Jim,
%genitor(Mae, jim), mulher(Mae), genitor(Avo, Mae),homem(Avo), genitor(Bisavo, Avo),homem(Bisavo).


%4.a bisavó materna de Jim,
%genitor(Mae, jim), mulher(Mae), genitor(Avo, Mae),homem(Avo),genitor(Bisa, Avo),mulher(Bisa).


%5.o pai de Ana e Pat,
%genitor(Pai,ana),homem(Pai),genitor(Pai,pat),homem(Pai).

%6.o irmão de Bob,
%(ACIMA)

%7.a irmã de Pat. 




