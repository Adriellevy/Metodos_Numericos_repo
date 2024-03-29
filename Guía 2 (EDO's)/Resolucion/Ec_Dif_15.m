%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ecuación diferencial del Ejercicio 15
%%% Resuelta por Método de Runge-Kutta O4
%%%
%%% TP#2 Métodos Numéricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function yp = Ec_Dif_15(t,y)

xt = 2;  % escalón de tensión de Entrada
R=10;
Lo=10;
L=Lo*exp(-t);

yp=xt/L-(R-L)*y/L;
