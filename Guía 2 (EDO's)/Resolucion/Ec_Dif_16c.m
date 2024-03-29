%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% ecuación diferencial del Ejercicio 16c 
%%% Resuelta por Método de Runge-Kutta O4 Sistemas
%%%
%%% TP#2 Métodos Numéricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Xp = Ec_Dif_16c(t,X)

X = X';

A = [0 1; -5 4];
B = [0 125*t*t]';
Xp = A*X + B;
Xp = Xp';