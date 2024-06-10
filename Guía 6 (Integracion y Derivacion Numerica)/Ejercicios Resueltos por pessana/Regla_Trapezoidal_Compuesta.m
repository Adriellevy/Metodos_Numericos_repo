%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 5 TP#6 Métodos Numéricos
%%%
%%% Aproximación central de primer orden (error cuadrático en h) de una
%%% integral definida ente a y b
%%%
%%% function Int = Regla_Trapezoidal_Compuesta(f,a,b,M)
%%%
%%% Parámetros de Entrada:
%%%
%%%       f = Nombre de la función a integrar (almacenada en un .m)
%%%       a = límite inferior de integración
%%%       b = límite superior de integración
%%%       M = cantidad de puntos a dividir en el intervalo de integración
%%%
%%% Parámetros de Salida:
%%%
%%%      S = Integral definida aproximada
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function S = Regla_Trapezoidal_Compuesta(f,a,b,M)

if nargin<4
    disp('Debe ingresar el nombre de la función, los límites de integración y la cantidad de intervalos');
    return;
end

h = (b-a)/M;
Sum = 0;
x0 = a;
for k=1:(M-1)
    Sum = Sum + feval(f,x0+k*h);
end
S = h*(feval(f,a) + feval(f,b))/2 + h*Sum;



