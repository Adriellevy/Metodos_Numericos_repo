%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% ecuación diferencial del Ejercicio 2a 
%%% Resuelta por Métdo de Euler
%%%
%%% TP.2 Métodos Numéricos
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Xp = Ec_Dif_13c(t,X)

A = [1 -4;1 1];

Xp = A*X';
Xp = Xp';