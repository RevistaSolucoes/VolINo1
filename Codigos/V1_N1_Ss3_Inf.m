%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% C�digo Octave que contiene los c�digos de las gr�ficas que aparecen en subsecci�n 3 de la
%%% Inform�ticaen ingenier�a: introducci�n a Octave
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Para obtener un gráfico 3D tenemos que definir una malla en el plano.
% Esto se realiza
[x y]=meshgrid(-2:0.1:2,-1:0.1:1)
% Evaluamos la función en la variable z:
z=x.^2+y.^2
% y dibujamos
surf(x,y,z)
