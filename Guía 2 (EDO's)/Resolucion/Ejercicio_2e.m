%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio 2e 
%%% Resuelta por Método de Euler
%%%
%%% TP.2 Métodos Numéricos
%%% Dr. Ing. Franco Pessana
%%% Período Lectivo 2015
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t0 = 0;   % Tiempo Inicial
tF = 0.99;   % Tiempo Final
y0 = 1;   % Condición inicial

% Análisis con 20 pasos de Iteración
M1 = 20;  % Pasos de solución
h1=(tF-t0)/M1;
E1 = Ec_Dif_Euler('Ec_Dif_2e',t0,tF,y0,M1);
t = E1(:,1);    % vector de tiempo
ya1 = E1(:,2);  % Solución aproximada de la Ec. Dif.
tv=0:h1:tF-h1;
y_v = 1./(1-tv.^2); % Solución verdadera de la Ecuación Diferencial
figure(1);
plot(t,ya1,'r',tv,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=20');
Error_Intervalo_20 = abs(y_v(M1)-ya1(M1))

% Análisis con 40 pasos de Iteración
M2 = 40;  % Pasos de solución
E2 = Ec_Dif_Euler('Ec_Dif_2e',t0,tF,y0,M2);
t = E2(:,1);    % vector de tiempo
ya2 = E2(:,2);  % Solución aproximada de la Ec. Dif.
h2=(tF-t0)/M2;
tv=0:h2:tF-h2;
y_v = 1./(1-tv.^2); % Solución verdadera de la Ecuación Diferencial
figure(2);
plot(t,ya2,'r',tv,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=40');
Error_Intervalo_40 = abs(y_v(M2)-ya2(M2))
