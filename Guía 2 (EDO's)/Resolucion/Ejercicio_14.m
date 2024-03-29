%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio 14.  
%%% Resuelto por Método de Runge-Kutta Orden 4
%%%
%%% TP#2 Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t0 = 0;   % Tiempo Inicial
tF = 10;   % Tiempo Final
M = 100;  % Pasos de solución

X0a = [3000 120]; % Condición inicial
[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_14',t0,tF,X0a,M);

t= T;    % vector de tiempo
X_Conejos = X(:,1);  % Conejos
Y_Zorros = X(:,2);  % Zorros
figure(1);
plot(X_Conejos,Y_Zorros,'b');
xlabel('Conejos');
ylabel('Zorros');
title('Modelo Predador - Presa C=3000; L=120');
grid

X0b = [5000 100]; % Condición inicial
[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_14',t0,tF,X0b,M);

t= T;    % vector de tiempo
X_Conejos = X(:,1);  % Conejos
Y_Zorros = X(:,2);  % Zorros
figure(2);
plot(X_Conejos,Y_Zorros,'b');
xlabel('Conejos');
ylabel('Zorros');
title('Modelo Predador - Presa C=5000; L=100');
grid