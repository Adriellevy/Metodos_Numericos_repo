function salida = Aproximacion_Potencial(X,Y)
%APROXIMACION_POLINOMICA Summary of this function goes here
%   Detailed explanation goes here
x=log(X);
y=log(Y);
Resultados=Aproximacion_Lineal(x,y);
Pendiente = Resultados(1); 
OrAlOr=Resultados(2); 
Indice_de_correlacion=Resultados(3);
salida = [Pendiente,OrAlOr,Indice_de_correlacion];
end

