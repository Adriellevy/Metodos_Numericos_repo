function [ Salida ] = MetodoEuler(Funcion,t0,tf,y0,M)
%%% En este metodo se le pasa una edo de 1er orden 
%%% la cual calcula una relacion funcional entre la 
%%% variacion(derivada) y la funcion respectivamente 
%%% y la variable independiente: 
%%% Ejemplo: y�(t)= t + e^t + 3y(t) 
%%% Par�metros de Entrada:
%%%       Funcion  = f(t,y) ingresada como cadena (script)
%%%       t0 = Tiempo inicial de an�lisis de la Ecuacion Diferencial
%%%       tf = Tiempo final de an�lisis de la Ecuacion Diferencial
%%%       y0 = y(t0) Condicion inicial de la ED de primer orden
%%%       M = N�mero de pasos del m�todo

if nargin<5
    disp('Debe ingresar funci�n f, tiempos iniciales y finales t0, tf, condici�n inicial y0 y pasos M');
    return;
end


 h=(tf-t0)/M;
 T=t0:h:tf; 
 cant = length(T);
 Y = zeros(1,cant); %se necesita establecesr una columna y una n filas
 Y(1)=y0;
 for tk = 1:M
    Y(tk+1)=Y(tk)+h*feval(Funcion,T(tk),Y(tk));
 end
 Salida=[T' Y'];


