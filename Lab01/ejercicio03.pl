% Hechos: estudiante y su nota final en un curso
nota(ana, 4.5).
nota(luis, 2.8).
nota(maria, 3.7).
nota(juan, 5.0).
nota(pedro, 2.3).

%Define una regla reprueba, que sea cierta si un estudiante tiene menor a 3.0.

reprueba(Estudiante):- nota(Estudiante,Nota), Nota >= 0, Nota < 3.0, !. 

% Define una regla aprueba, que sea cierta si un estudiante tiene nota mayor o igual a 3.0.

aprueba(Estudiante):- nota(Estudiante, Nota), Nota >= 3.0, Nota =< 3.9,!.

%Define una regla rango, donde rango(X, Min, Max) sea cierto si la nota de un estudiante X está entre Min y Max.

rango(Estudiante, Min, Max):- nota(Estudiante, Nota), Nota >= Min, Nota =< Max,!. 

%Define una regla clasificacion que asigne una categoría a cada estudiante según la nota:

notable(Estudiante):- nota(Estudiante, Nota), Nota >= 4.0 , Nota =< 4.4,!.

excelente(Estudiante):- nota(Estudiante, Nota), Nota >= 4.5 , Nota =< 5.0,!.

%0.0 – 2.9 → reprobado
%3.0 – 3.9 → aprobado
%4.0 – 4.4 → notable
%4.5 – 5.0 → excelente

clasificacion(Estudiante, reprobado):- reprueba(Estudiante).
clasificacion(Estudiante, aprobado):- aprueba(Estudiante).
clasificacion(Estudiante, notable):- notable(Estudiante).
clasificacion(Estudiante, excelente):- excelente(Estudiante).



%Define la regla distancia((X1, Y1), (X2, Y2), D), que calcule la distantia euclidiana entre dos puntos

distancia((X1, Y1), (X2, Y2), D):- D is ((X2-X1)**2 + (Y2-Y1)**2)**0.5.

%Ahora teniendo en cuenta estos casos base.

% Caso base: lista vacía o con un solo punto -> distancia 0
distancia_total([], 0).
distancia_total([_], 0).

%Define la regla distancia_total que calcule la suma de distancias entre una lista puntos.
distancia_total([P1, P2 | Resto], Total):- distancia(P1,P2,DParcial), distancia_total([P2 |Resto],DResto), Total is DParcial + DResto,!.  







