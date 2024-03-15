%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Resolución ejercicio Nro. 10b TP#1
%%% Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

% Inicialización de las matrices
A = [1 -2 0 0 0;2 4 1 0 0;0 4 1 2 0;0 0 2 -1 3;0 0 0 1 -2];
B = [2 5 8 -3 1]';

disp('Solución del sistema tridiagonal del Ejercicio 10b):')
Sol_X=Sol_Sist_Tridiag(A,B)


