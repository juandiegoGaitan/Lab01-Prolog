%Juan Diego Gaitan

% Hechos: relación entre ciudades
ciudad(bogota).
ciudad(medellin).
ciudad(cali).
ciudad(cartagena).
ciudad(manizales).
ciudad(barranquilla).
ciudad(pasto).
ciudad(monteria).

% Hechos: vuelos directos
vuelo(bogota, medellin).
vuelo(medellin, cartagena).
vuelo(cali, bogota).
vuelo(bogota, cartagena).
vuelo(manizales, cartagena).
vuelo(medellin, barranquilla).
vuelo(pasto, bogota).
vuelo(bogota, pasto).

% Preguntas 
% 1.1 ¿Existe un vuelo directo de Bogotá a Medellín?: Si
% 1.2 %¿Qué destinos se pueden alcanzar directamente desde Bogotá?: Se
% puede alcanzar Medellin, Cartagena y Pasto
% 1.3 ¿Desde que destinos se puede alcanzar Medellin? : Únicamente desde
% Bogotá
% 1.4 ¿Hay alguna forma de llegar directamente a cali? : No

%Querys 
% 1.1 ?-vuelo(bogota, medellin). : true
% 1.2 ?-vuelo(bogota, Ciudad). : medellin, cartagena, pasto
% 1.3 ?-vuelo(Ciudad, medellin). : bogota
% 1.4 ?-vuelo(Ciudad,cali). : false 