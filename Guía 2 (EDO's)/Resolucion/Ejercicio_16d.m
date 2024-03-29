%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio 16d
%%% Resuelta por Método de Runge-Kutta Orden 4
%%%
%%% TP.2 Métodos Numéricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t0 = 0.01;   % Tiempo Inicial
tF = 5;   % Tiempo Final
X0 = [1 2]; % Condición inicial
h = 0.05;   % Intervalos de tiempos
M = round((tF-t0)/h);  % Pasos de solución

[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_16d',t0,tF,X0,M);

t= T;    % vector de tiempo
x_t = X(:,1);  % solución x(t)

figure(1);
plot(t,x_t,'r');
grid
xlabel('t (s)');
ylabel('y(t)');
title('Solución de la Ecuación Diferencial');