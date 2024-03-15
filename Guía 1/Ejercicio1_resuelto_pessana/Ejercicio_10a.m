%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Resolución ejercicio Nro. 10a) TP#1
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
A = [1 2 0 0;2 3 -1 0;0 4 2 -5;0 0 2 -4];
B = [9 9 26 32]';

disp('Solución del sistema tridiagonal del Ejercicio 10a):')
X_Sol=Sol_Sist_Tridiag(A,B)


