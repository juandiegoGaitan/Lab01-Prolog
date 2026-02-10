%Serie de Fibonacci

%La serie de Fibonacci se define así:

%fib(0) = 0
%fib(1) = 1
%fib(N) = fib(N-1) + fib(N-2), para N > 1
%0, 1, 2, 3, 5 , 8, 13

%Define la regla fibonacci(X, N), donde X el el numero_x de la serie de fibonacci y 
%N el valor correspondiente de la serie, uso de "is" para asignar valores a variables.

%Casos base

fib(0,0).
fib(1,1).
fib(X,N):- X > 1, Menos1 is X -1, Menos2 is X -2, fib(Menos1, N1), fib(Menos2,N2),  N is N1 + N2,!.




