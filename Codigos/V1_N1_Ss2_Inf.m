%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Código Octave que contiene los códigos de las gráficas que aparecen en subsección 2 de I
%%% Informática en ingeniería: introducción a Octave
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Para obtener un gráfico de funcion y=x^2 necesitamos tener los puntos
% del eje x. Octave tiene un comando que calcula muchos puntos de un
% intervalo. Aquí queremos todos los números entre -2 y 2 distanciados
% por 0,1 unidades. Esto podemos obtenerlo escribiendo
x=-2:0.1:2
% Despues claculamos los valores de y:
y=x.^2 
% y dibujamos
plot(x,y)


