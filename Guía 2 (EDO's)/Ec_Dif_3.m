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

function pp = Ec_Dif_3(t,p)

a=0.02; 
b=0.00004; 
pp=a*p-b*p*p;