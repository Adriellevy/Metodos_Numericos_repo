function salida = Aproximacion_Lineal(X,Y)
%{
    La pendiente de la Curba que agrupa a los puntos
    La OrAlOr es la Ordenada al Origen de la nube de puntos dada
    El Indice_de_correlacion es la bondad del ajuste lineal
%}
promediox = mean(X);
promedioy = mean(Y); %es el promedio en la absisa y

%Reescribo la sumatoria en absisa x e y para hacer la bondad de ajuste
SX2=(X-promediox)'*(X-promediox); % suma de cuadrados de X
SY2=(Y-promedioy)'*(Y-promedioy); % suma de cuadrados de Y
SXY=(X-promediox)'*(Y-promedioy); % suma de productos cruzados de X e Y

Pendiente = SXY/SX2; % Pendiente del ajuste lineal
OrAlOr = promedioy - Pendiente*promediox; % Ordenada del ajuste lineal
Indice_de_correlacion= SXY/sqrt(SX2*SY2); % Coeficiente de correlación de la recta
salida = [Pendiente,OrAlOr,Indice_de_correlacion];
end

