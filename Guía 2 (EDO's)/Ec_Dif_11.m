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

function yp = Ec_Dif_11(t,y)
a=70; 
k=0.01;
b=50;
yp=k*(a-y)*(b-y);