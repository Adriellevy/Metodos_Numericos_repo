function salida = Aproximacion_Reyleigh(X,Y)
%APROXIMACION_POLINOMICA Summary of this function goes here
%   Detailed explanation goes here
y=log(X./Y);
Resultados=Aproximacion_Lineal(X,y);
Pendiente = Resultados(1); 
OrAlOr=Resultados(2); 
Indice_de_correlacion=Resultados(3);
salida = [Pendiente,OrAlOr,Indice_de_correlacion];
end

