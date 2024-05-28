%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 7 TP#5 Métodos Numéricos
%%%
%%% Interpolación Polinomial de Newton
%%%
%%% function [C,D] = Interp_Newton(X,Y)
%%%
%%% Parámetros de Entrada:
%%%
%%%       X = vector conteniendo los valores de las abscisas de la f(x) a
%%%       interpolar
%%%       Y = vector conteniendo los valores de las ordenadas de la f(x) a
%%%       interpolar
%%%
%%% Parámetros de Salida:
%%%
%%%      C_N = Vector que contiene los coeficientes del polinomio
%%%      interpolador de Newton, ordenado en potencias decrecientes de x
%%%      de izquierda a derecha
%%%      D = matriz que contiene la Tabla de las Diferencias Divididas
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [C_N,D] = Interp_Newton(X,Y)

if nargin<2
    disp('Debe ingresar los vectores de abscisas y ordenadas X e Y');
    return;
end

N=length(X); % cantidad de puntos a interpolar
D = Tabla_Diferencias_Divididas(X,Y); % Llamado a la rutina de Tabla de Diferencias Divididas
C = zeros(1,N); 
for k=1:N
    C(k)=D(k,k); % Coeficientes del Polinomio de newton de orden N-1 de la tabla de Diferencias
end
M_C=zeros(N,N);   % Matriz donde se almacenarán los coeficientes de los polinomios intermedios
M_C(1,N)=1
for k=2:N
    V = 1; % Coeficiente independiente -(grado 0) a convolucionar (multiplicación de polinomios)
    for j=1:k-1
        V = conv(V,poly(X(j)));
    end
    M_C(k,N-k+1:N) = V;
end
M_C_N = C'*ones(1,N).*M_C; % Matriz que contiene los polinomios intermedios multiplicados por los coef. D(k,k)
C_N = sum(M_C_N);  % Coeficientes del polinomio de Newton
