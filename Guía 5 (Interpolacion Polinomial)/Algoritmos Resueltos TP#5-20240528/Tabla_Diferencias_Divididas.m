%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tabla de Diferencias Divididas
%%% Se utiliza para generar los coeficientes de los polinomios de 
%%% Newton de orden N
%%%
%%% Variables de entrada:
%%%
%%%         X: Vector de abscisas formados por los centros del polinomio
%%%         Y: Ordenadas correspondientes a los centros del polinomio de
%%%         Newton
%%%
%%% Variables de Salida:
%%%
%%%         D: Tabla de Diferencias Divididas 
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function D = Tabla_Diferencias_Divididas(X,Y)

N = length(X); % Cantidad de Centros
D = zeros(N,N);
D(:,1)=Y';
for j=2:N
    for k=j:N
        D(k,j)= (D(k,j-1)-D(k-1,j-1))/(X(k)-X(k-j+1));
    end    
end