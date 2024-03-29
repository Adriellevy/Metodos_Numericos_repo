%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ecuación diferencial del Ejercicio 5 
%%% Resuelta por Método de Euler
%%%
%%% TP.2 Métodos Numéricos
%%% Dr. Ing. Franco Pessana
%%% Período Lectivo 2015
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function yp = Ec_Dif_5(t,y)

yp = 32-0.032*y^(3/2);