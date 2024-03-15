%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Resolución ejercicio Nro. 8d) TP#1
%%% Métodos Numéricos
%%%
%%% Se debe ingresar como parámetro de entrada el 
%%% orden N del Sistema de Ecuaciones Lineales
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function X = Ejercicio_8d(N)

if nargin<1
    disp('Debe el orden N del sistema de ecuaciones');
    return;
end

% Inicialización de las matrices

A = zeros(N,N);
B = zeros(N,1);

B(1) = N;
for i=1:N
    if i>=2
        B(i) = (i^N-1)/(i^(N-1)*(i-1));
    end
    for j=1:N
        A(i,j)=i^-(j-1);
    end
 end
% Llammado a la rutina de reaolución de un sistema triangular superior
disp('Solución del sistema de ecuaciones del Ejercicio 8d):')
X = Triang_Gauss(A,B);
% X = inv(A)*B   % Forma de verificar con Matlab el resultado 