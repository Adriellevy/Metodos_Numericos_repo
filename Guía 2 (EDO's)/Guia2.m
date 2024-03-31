
%Metodo de Euler incisos 1 y 2
%{ 
------------------------ Ejercio 2 ------------------------------------
t0 = 0;   % Tiempo Inicial
tF = 2;   % Tiempo Final
y0 = 1;   % Condición inicial

% Análisis con 20 pasos de Iteración
M1 = 20;  % Pasos de solución
%h1 = (tF-t0)/M1; % At

E1 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M1);

t = E1(:,1);    % vector de tiempo
ya1 = E1(:,2);  % Solución aproximada de la Ec. Dif.
y_v = -exp(-t)+t.^2-2*t+2; % Solución verdadera de la Ecuación Diferencial
figure(1);
plot(t,ya1,'r',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=20');
Error_Intervalo_20 = abs(y_v(M1)-ya1(M1));




%Análisis con 40 pasos de Iteración
M2 = 40;  % Pasos de solución
%h2 = (tF-t0)/M1; % At

E2 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M2);
t = E2(:,1);    % vector de tiempo
ya2 = E2(:,2);  % Solución aproximada de la Ec. Dif.
y_v = -exp(-t)+t.^2-2*t+2; % Solución verdadera de la Ecuación Diferencial
figure(2);
plot(t,ya2,'r',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=40');
Error_Intervalo_40 = abs(y_v(M2)-ya2(M2))




%Análisis con 100 pasos de Iteración
M3 = 100;  % Pasos de solución
%h2 = (tF-t0)/M1; % At

E3 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M3);
t = E3(:,1);    % vector de tiempo
ya3 = E3(:,2);  % Solución aproximada de la Ec. Dif.
y_v = -exp(-t)+t.^2-2*t+2; % Solución verdadera de la Ecuación Diferencial
figure(3);
plot(t,ya3,'r',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=100');
Error_Intervalo_40 = abs(y_v(M3)-ya3(M3))







%Análisis con 1000 pasos de Iteración
M4 = 1000;  % Pasos de solución
%h2 = (tF-t0)/M1; % At


E4 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M4);
t = E4(:,1);    % vector de tiempo
ya4 = E4(:,2);  % Solución aproximada de la Ec. Dif.
y_v = -exp(-t)+t.^2-2*t+2; % Solución verdadera de la Ecuación Diferencial
figure(4);
plot(t,ya4,'r',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=1000');
Error_Intervalo_40 = abs(y_v(M4)-ya4(M4))
%}
% Metodo de Euler inciso 4
%{
% Ejercicio 4
t0 = 0;   % Tiempo Inicial
tF = 5;   % Tiempo Final
y0 = 5000;   % Condición inicial


% Incizo a
% Analisis con h=1
M1 = tF-t0;  % Pasos de solución
%h1 = (tF-t0)/M1; % At

E1 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M1);
t = E1(:,1);    % vector de tiempo
ya1 = E1(:,2);  % Solución aproximada de la Ec. Dif.
figure(1);
plot(t,ya1);
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('h=1');





% Ejercicio 4b
% Analisis con h=1/12
M2 = (tF-t0)*12;  % Pasos de solución
%h1 = (tF-t0)/M1; % At

E2 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M2);
t = E2(:,1);    % vector de tiempo
ya1 = E2(:,2);  % Solución aproximada de la Ec. Dif.
figure(2);
plot(t,ya1);
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('h=1/12');



% Ejercicio 4c
% Analisis con h=1/360
M3 = (tF-t0)*360;  % Pasos de solución
%h1 = (tF-t0)/M1; % At

E3 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M3);
t = E3(:,1);    % vector de tiempo
ya1 = E3(:,2);  % Solución aproximada de la Ec. Dif.
figure(3);
plot(t,ya1);
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('h=1/360');
%}

