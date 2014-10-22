%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% C�digo Octave
%%% de las gr�ficas que aparecen en secci�n Matem�tica em engenharia: a caten�ria
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% F�gura 1: Fuerzas que actuan sobre un segmento de una catenaria entre
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% La f�rmula de una catenaria que depende del par�metro a es a*cosh(x/a)

function y=cat1(a,x)
	 y=a*cosh(x/a);
end

%En la Figura 1 se muestra el segmento de una catenaria con fuerzas
%que actuan sobre este segmento. El par�metro utilizado es a=2

a=2;
f=@(x) cat1(a,x);

% Inicializamos el gr�fico con malla
hold on;
grid on;
%El rango del gr�fico sea desde 0 hasta x0 tales que f(x0)=ymax=5

ymax=5;
prex=3; %condicion inicial para la soluci�n
x0=fsolve(@(x) f(x)-ymax,prex);

axis ([-1.2, x0+0.5, 1, 6]);
x=0:0.01:x0;
y=f(x);

% La catenaria:
plot(x,y,"Color","red","linewidth", 4);

% Los palitos:
tx=[0 0];
ty=[1 2];
plot(tx,ty,"Color","black", "linewidth", 10);

tx=[x0 x0];
ty=[1 5];
plot(tx,ty,"Color","black", "linewidth", 10);
text (2.9, 5, '{\Huge \bf S}');

% Puntos
plot([0 0.8 1.5 x0],[2 2.25 f(1.5) 5],"o","linewidth", 6);

% El vector $T_0$ de la longitud 1 en el punto $I$
T0=1;

quiver(0,f(0),-T0, 0,"linewidth", 3, "Color","green");
text (-0.5, 1.7, '{\Huge $T_0$}');
text (-0.2, 1.7, '{\Huge\bf I}');

% Ahora otros vectores donde es necesario definir la derivada del f:
df=@(x) y=sinh(x/a);

% Longitud
l=@(x) a*sinh(x/a);
L=l(x0);

% lambda
g=9.81;
lambda = T0/(a*g);

% Vector peso
quiver(0.8,2.25,0,-lambda*g*l(1.5),"Color","green","linewidth", 3)
text (1.2, 2, '{\Huge $F_x$}');

% Vector T_x
quiver(1.5,f(1.5),T0, lambda*g*l(1.5),"Color","green","linewidth", 3)
text (2, 2.7, '{\Huge $T_x$}');
text (1, 2.9, '{\Huge $P=(x,y)$}');

% Al final producimos un archivo
print('catenaria_con_fuerzas', '-dtex');
hold off;

printf("Presiona una tecla. \n");
pause;

clear;clc;close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% F�gura 4: Funcion f(x)=hcos(x/h) para h=0.5,1,1.5,2,2.5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ymax=4.9
prex=1
labels = {};
grid on;
hold on;
for a=1:5
  x0=fsolve(@(x) cat1(a/2,x)-ymax,prex);
  x=-x0:0.01:x0;
  c=["r", "g", "b", "m", "c"];
  y=cat1(a/2,x);
  labels = {labels{:}, cstrcat(cstrcat('{h=',num2str(a/2)),'}')};
  plot(x,y,"Color",c(a));
end

legend(labels, "location", "east");

print('catenaria_estandard_con_diferente_a', '-depslatex');
hold off;

printf("Presiona una tecla. \n");
pause;

clear;clc;close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% La formula general de la catenaria, que depende de tres par�metros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function f = cata(x,a)
  f= a(1)*(cosh((x-a(2))/a(1)))+a(3);
endfunction

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% La formula general de la catenaria, que depende de dos parametros
%%% [a(1);a(2)] y pasa por (0,0)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f = cat2(x,a)
  b=[a;-cosh(-a(2)/a(1))];
  f = cata(x,b);
endfunction

% Explicitamente esto era:
% function f = cat2(x,a)
%	 f= a(1)*(cosh((x-a(2))/a(1))-cosh(-a(2)/a(1)));
% endfunction


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% La longitud del segmento de  la catenara entre puntos x1 y x2 dada por la funci�n catenaria2
%%% o catenaria3 que depende de dos par�metros: [a(1);a(2)] o [a(1);a(2);a(3)] 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function f = lCata(x1,x2,a)
  f = a(1)*(sinh((x2-a(2))/a(1))-sinh((x1-a(2))/a(1)));
endfunction

% Buscamos los parametros a=[a(1);a(2);a(3)] para que la funcion catenaria
% dada por catenaria2 pasa por el punto (x1,y1) y (x2,y2) y el segmento
% estre estos puntos tiene la longitud l

function f=sistema1(x1,y1,x2,y2,l,a)
  f(1) = y1 - cata(x1,a);
  f(2) = y2 - cata(x2,a);
  f(3) = l - lCata(x1,x2,a);
endfunction

function a=solveCata(x1,y1,x2,y2,l)
  a0=[1; 1; 1];
  a=fsolve(@(a) sistema1(x1,y1,x2,y2,l,a),a0);
endfunction

% printf("Presiona una tecla. \n");

solveCata(0,1,1,1.5431, 1.1752)
hold off

% Soluci�n y gr�fico
% Punto (x1,y1)=(0,0) y (x2,y2)=(1,2)
x1=0;
y1=0;
x2=1; 
y2=2; 

a0=[1;1;1];


% Dibujando plot(x,y)

hold on;

labels = {};
col=["r", "g", "b", "m", "c"];
Ls=[sqrt(5),2.4,2.9,3.5];

for h=1:4
  l=Ls(h);
  a=solveCata(x1,y1,x2,y2, l);
  x = x1:0.01:x2;
  y = cata(x,a);
  labels = {labels{:}, num2str(l)};
  plot(x,y,"Color",col(h))    
end

legend(labels, "location", "northeast");
print('catenarias12', '-depsc');
hold off;
printf("Presiona una tecla. \n");
pause;

clear;clc;close all;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% F�gura 6:  La pa�rabola y la catenaria que pasan por los �puntos (0,0),(1,1) y (2,4)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f=sistema2(x1,y1,x2,y2,x3,y3,a)
  f(1) = y1 - cata(x1,a);
  f(2) = y2 - cata(x2,a);
  f(3) = y3 - cata(x3,a);
endfunction
a0=[1; 1; 1];
fsolve(@(a) sistema2(0,0,1,1,2,4,a),a0)
a=fsolve(@(a) sistema2(0,0,1,1,2,4,a),a0);

x = 0:0.01:2;
y = cata(x,a);

plot(x,y,"Color","red")    
hold on
y=x.^2;
plot(x,y)    
grid on;
labels={"catenaria","parabola"};
legend(labels, "location", "east");
print('catenariaVsParabola', '-depsc');
hold off