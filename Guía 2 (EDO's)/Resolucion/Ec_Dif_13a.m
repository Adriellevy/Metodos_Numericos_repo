%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ecuación diferencial del Ejercicio 13a 
%%%
%%% Cálculo Numérico
%%% FRBA
%%% Universidad Tecnológica Nacional
%%%
%%% Dr. Ing. Franco Martin Pessana
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Xp = Ec_Dif_13a(t,X)

A = [2 3;2 1];

Xp = A*X';
Xp = Xp';