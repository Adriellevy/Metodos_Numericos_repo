%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% ecuaci�n diferencial del Ejercicio 2a 
%%% Resuelta por M�tdo de Euler
%%%
%%% TP.2 M�todos Num�ricos
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Xp = Ec_Dif_13b(t,X)

A = [3 -1;4 -1];

Xp = A*X';
Xp = Xp';