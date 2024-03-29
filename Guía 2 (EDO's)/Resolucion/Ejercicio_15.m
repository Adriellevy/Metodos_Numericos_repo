%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio 15 
%%% Resuelta por Método de Runge-Kutta Orden 4
%%%
%%% TP%# Métodos Numéricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

t0 = 0;   % Tiempo Inicial
tF = 5;   % Tiempo Final
i0 = 0; % Condición inicial
M = 500;  % Pasos de solución

E = Ec_Dif_Runge_Kutta_O4('Ec_Dif_15',t0,tF,i0,M);

t= E(:,1);    % vector de tiempo
i_t = E(:,2);  % Corriente en la bobina
figure(1);
plot(t,i_t,'r');
xlabel('t (s)');
ylabel('i(t) [a]');
grid