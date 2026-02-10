%En Prolog, las listas se representan con corchetes:

%Lista vacía: []
%Lista con elementos: [a, b, c]
%Se puede descomponer en cabeza y cola: [Cabeza | Cola]

%?- [H|T] = [1,2,3,4].
%H = 1,
%T = [2,3,4].
%?- [H|T] = [1].
%H = 1,
%T = [].
%Ejercicios:

%Escribe una regla que verifique si un elemento es miembro de una lista.

miembro(Elemento,[Elemento|_]).
miembro(Elemento, [_|Cola]):- miembro(Elemento, Cola),!.

%Escribe una regla "longitud" que dada una lista, calcule su longitud.

longitud([],0).
longitud([_|Cola], LongitudLista):- longitud(Cola, LongitudCola), LongitudLista is LongitudCola + 1,!.

%Escribe una regla "concatena" que dadas dos listas, las concatene en otra.

concatena([],Lista2, Lista2).
concatena([H|T],Lista2,[H|RestoUnido]):- concatena(T,Lista2,RestoUnido).

%Escribe una regla que permite obtener en una lista los N elementos de las serie de fibonacci
%usa la regla predifina append(L1,L2,L3), que concatena L1 y L2, en L3.
fib(0,0).
fib(1,1).
fib(X,N):- X > 1, Menos1 is X -1, Menos2 is X -2, fib(Menos1, N1), fib(Menos2,N2),  N is N1 + N2,!.

listaFibo(-1,[]).
listaFibo(N,[FiboActual | RestoLista]):- N >= 0 ,fib(N, FiboActual), Nanterior is N -1 ,  listaFibo(Nanterior, RestoLista),!.

%Escribe una regla que determine el reverso de una lista.

reverso([], []).
reverso([H|T],Respuesta):- reverso(T,Rintermedio),append(Rintermedio,[H],Respuesta),!.


%Escribe una regla que determine si una lista es palindroma.

palindromo(Lista):-reverso(Lista,Lista).
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                  