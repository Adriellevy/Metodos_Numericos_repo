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

function pp = Ec_Dif_3(t,p)

a=0.02; 
b=0.00004; 
pp=a*p-b*p*p;