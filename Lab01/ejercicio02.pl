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

% Reglas 

%Determine si dos ciudades están conectadas mediante una escala.

conexion(Ciudad1,Ciudad2):-vuelo(Ciudad1,Escala), vuelo(Escala,Ciudad2).


%Ahora, verifica si existe una conexión de Bogotá a Barranquilla.
% ?-conexion(bogota,barranquilla). : true 

%Encuentra todas las ciudades a las que se puede llegar desde Cali con una escala.
% ?-conexion(cali,Ciudad). : medellin, cartagena, pasto

%Define una regla viaje que sea cierta si existe un vuelo  
%directo o con una escala entre dos ciudades (no usar recursion).

viaje(Ciudad1,Ciudad2):-vuelo(Ciudad1,Ciudad2).
viaje(Ciudad1,Ciudad2):-vuelo(Ciudad1,Escala1), vuelo(Escala1,Escala2), vuelo(Escala2, Ciudad2).

%Ahora, verifica si existe un viaje posible de Bogotá a Pasto. 
% ?-viaje(bogota,pasto) : true 

%Define una regla destinos que devuelva todos los destinos alcanzables directamente desde una ciudad.

%Se puede realizar con una query de viaje
%viaje(Ciudad,Destinos). 

%Hechos: Animales
perro(firulais).
perro(bruno).
perro(max).
gato(misu).
gato(luna).
gato(chanel).
gato(orion).
ave(piolin).

%Hechos: Duenos y animales
dueno(ana, firulais).
dueno(ana, misu).
dueno(luis, luna).
dueno(luis, orion).
dueno(luis, firulais).
dueno(maria, piolin).
dueno(julia, chanel).
dueno(pedro, bruno).

% Preguntas

% Define una regla que determine si una persona tiene un perro.

duenoPerro(Nombre):- dueno(Nombre, Animal), perro(Animal).

% Ahora, encuentra los dueños de perros.
% Query: ?-duenoPerro(Nombre).

% Define una regla que determine si una persona tiene un gato.

duenoGato(Nombre):- dueno(Nombre, Animal), gato(Animal).

% Ahora, encuentra los dueños de gatos.
% Query: ?-duenoGato(Nombre).

% Define una regla que determine si una persona tiene multiples mascotas.

multipleMascota(Nombre):- dueno(Nombre,Animal1), dueno(Nombre, Animal2), Animal1 \= Animal2.

% Ahora, encuentra los dueños de multiple tipos de mascota.
% Query: ?-multipleMascota(Nombre).

% Define una regla amante_animales para identificar dueños que tienen tanto perro como gato.

amanteAnimales(Nombre):- dueno(Nombre,Gato), gato(Gato),dueno(Nombre, Perro), perro(Perro).

% Define una regla mascota_compartida que indique si dos personas comparten mascota.

mascotaCompartida(Nombre1, Nombre2):- dueno(Nombre1, Mascota), dueno(Nombre2, Mascota), Nombre1 \= Nombre2. 

% Define una regla tipo_mascota que asocie una persona con el tipo de mascota que tiene (perro, gato, ave, etc.).

% Regla dueño Ave
duenoAve(Nombre):- dueno(Nombre, Animal), ave(Animal).

% Composición Reglas 
tipoMascota(Nombre, perro):- duenoPerro(Nombre).
tipoMascota(Nombre, gato):-duenoGato(Nombre).
tipoMascota(Nombre,ave):-duenoAve(Nombre).






