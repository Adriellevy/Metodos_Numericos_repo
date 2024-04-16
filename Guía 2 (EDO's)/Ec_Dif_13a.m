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

function Xp = Ec_Dif_13a(t,X)

A = [2 3;2 1];

Xp = A*X';
Xp = Xp';