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

function yp = Ec_Dif_11(t,y)
a=70; 
k=0.01;
b=50;
yp=k*(a-y)*(b-y);