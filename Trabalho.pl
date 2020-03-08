% Hora
hora(lp01,ab).
hora(ed01,cd).
hora(lp02,ab).
hora(ba01,cd).
hora(tec,cd).
hora(comp,ab).
hora(ia,cd).
hora(pard,ab).
hora(sidi,cd).
hora(esta,ab).
hora(madi,cd).
hora(red1,cd).
% Dia
dia(lp01,segunda).
dia(ed01,segunda). 
dia(lp02,terca).
dia(ba01,terca).
dia(tec,terca).
dia(comp,quarta).
dia(ia,quarta).
dia(pard,quinta).
dia(sidi,quinta).
dia(esta,sexta).
dia(madi,sexta).
dia(red1,sexta).
% Sala
sala(lp01,lab04).
sala(ed01,lab04).
sala(lp02,lab05).
sala(ba01,lab01).
sala(tec,lab01).
sala(comp,lab06).
sala(ia,lab06).
sala(pard,lab07).
sala(sidi,lab07).
sala(esta,lab03).
sala(madi,lab03).
sala(red1,lab03).
% Professor
prof(lp01,vitor).
prof(ed01,vitor).
prof(lp02,sergio).
prof(ba01,ricardo).
prof(tec,ricardo).
prof(comp,cleilton).
prof(ia,cleilton).
prof(pard,maikol).
prof(sidi,vitor).
prof(esta,aragas).
prof(madi,manoel).
prof(red1,aragas).
% Quantidade de Alunos
qtdAlu(lp01,40).
qtdAlu(ed01,40).
qtdAlu(lp02,20).
qtdAlu(ba01,40).
qtdAlu(tec,27).
qtdAlu(comp,30).
qtdAlu(ia,20).
qtdAlu(pard,30).
qtdAlu(sidi,30).
qtdAlu(esta,30).
qtdAlu(madi,12).
qtdAlu(red1,13).

%a. quais disciplinas são ministradas na sexta; 
disc_sexta(X) :- dia(X,sexta).
%b. que disciplina é ministrada por um certo professor em particular;  
disc_prof(X,Professor) :- prof(X,Professor).
%c. que disciplinas são ministradas no período cd; 
disc_cd(X,cd) :- hora(X,cd).
%d. que disciplinas acontecem no mesmo período;  
disc_mesm(X,Horario,Dia) :- hora(X,Horario),dia(X,Dia).
%e. qual disciplina está em uma certa sala e num certo horário em particular;
disc_sal_hora(X, Horario, Sala) :- hora(X,Horario),sala(X,Sala).
%f. se um professor estiver ministrando em um certo horário, onde o professor está.  
sala_hora_prof(Y,Horario,Professor) :- hora(X,Horario),prof(X,Professor),sala(X,Y).
%a. quando(Dis, Dia, Hor), que deve responder "yes" quando a disciplina Dis acontecer no dia Dia e no horário Hor.
quando(Diciplina,Dia,Horario) :- dia(Diciplina,Dia),hora(Diciplina,Horario).