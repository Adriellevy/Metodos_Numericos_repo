%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio Nro. 9 TP#3 Métodos Numéricos
%%%
%%% Aproximación Lineal por Serie Trigonométrica de Fourier:
%%%
%%%         y = a0/2 + Sum(ak*cos(kw0t)+bk*sen(kw0t))
%%%
%%% function [T,Y_STF] = Ajuste_Serie_Trig_Fourier(t,Y,M)
%%%
%%% Parámetros de Entrada:
%%%
%%%       t = Vector de Tiempos Nx1 correspondiente a Y (si se necesitara graficar)
%%%       Y = vector Nx1 con la señal periódica (de un período) a aproximar por STF
%%%       M = Orden del polinomio de Fourier a aproximar y(t)
%%%
%%% Parámetros de Salida:
%%%
%%%      T = vector de tiempos de análisis (Vector Columna)
%%%      Y = Señal aproximada por Serie Trigonométrica de Fourier (Vector Columna)
%%%
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [T,Y_STF] = Ajuste_Serie_Trig_Fourier(t,Y,M)

if nargin<3
    disp('Debe ingresar t, Y(t) y M');
    return;
end

N=length(Y);        % Longitud de la señal a aproximar
n=0:N-1;            % Discretización natural del eje temporal
Matriz=zeros(M,N);
for k=1:M
    ak = (2/N)* cos (2*pi*n*k/N)*Y;
    disp(ak)    
    bk = (2/N)* sin (2*pi*n*k/N)*Y;
    Matriz(k,:)= ak * cos(2*pi*n*k/N) + bk * sin(2*pi*n*k/N);
end
a02=mean(Y);
Y_STF = a02 + sum(Matriz);   % Serie Trigonométrica de Fourier, orden M
T=t;