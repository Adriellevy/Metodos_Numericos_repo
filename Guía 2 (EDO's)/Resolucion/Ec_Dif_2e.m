%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% ecuación diferencial del Ejercicio 2e 
%%% Resuelta por Método de Euler
%%%
%%% TP.2 Métodos Numéricos
%%% Dr. Ing. Franco Pessana
%%% Período Lectivo 2015
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function yp = Ec_Dif_2e(t,y)

yp= 2*t*y.^2;