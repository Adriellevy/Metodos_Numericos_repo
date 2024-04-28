function salida = Aproximacion_Inversamente_Lineal( X,Y )
%APROXIMACION_INVERSAMENTE_LINEAL Summary of this function goes here
%   Detailed explanation goes here

y=1./Y;
Resultados=Aproximacion_Lineal(X,y);
Pendiente = Resultados(1); 
OrAlOr=Resultados(2); 
Indice_de_correlacion=Resultados(3);
salida = [Pendiente,OrAlOr,Indice_de_correlacion];
end

