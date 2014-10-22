%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% C�digo Octave que contiene los c�digos de las gr�ficas que aparecen en subsecci�n 2 de I
%%% Inform�tica en ingenier�a: introducci�n a Octave
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Para obtener un gr�fico de funcion y=x^2 necesitamos tener los puntos
% del eje x. Octave tiene un comando que calcula muchos puntos de un
% intervalo. Aqu� queremos todos los n�meros entre -2 y 2 distanciados
% por 0,1 unidades. Esto podemos obtenerlo escribiendo
x=-2:0.1:2
% Despues claculamos los valores de y:
y=x.^2 
% y dibujamos
plot(x,y)


