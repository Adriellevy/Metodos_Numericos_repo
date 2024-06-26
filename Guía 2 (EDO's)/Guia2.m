
%Metodo de Euler incisos 1 y 2
%{ 
------------------------ Ejercio 2 ------------------------------------
t0 = 0;   % Tiempo Inicial
tF = 2;   % Tiempo Final
y0 = 1;   % Condici�n inicial

% An�lisis con 20 pasos de Iteraci�n
M1 = 20;  % Pasos de soluci�n
%h1 = (tF-t0)/M1; % At

E1 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M1);

t = E1(:,1);    % vector de tiempo
ya1 = E1(:,2);  % Soluci�n aproximada de la Ec. Dif.
y_v = -exp(-t)+t.^2-2*t+2; % Soluci�n verdadera de la Ecuaci�n Diferencial
figure(1);
plot(t,ya1,'r',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=20');
Error_Intervalo_20 = abs(y_v(M1)-ya1(M1));




%An�lisis con 40 pasos de Iteraci�n
M2 = 40;  % Pasos de soluci�n
%h2 = (tF-t0)/M1; % At

E2 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M2);
t = E2(:,1);    % vector de tiempo
ya2 = E2(:,2);  % Soluci�n aproximada de la Ec. Dif.
y_v = -exp(-t)+t.^2-2*t+2; % Soluci�n verdadera de la Ecuaci�n Diferencial
figure(2);
plot(t,ya2,'r',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=40');
Error_Intervalo_40 = abs(y_v(M2)-ya2(M2))




%An�lisis con 100 pasos de Iteraci�n
M3 = 100;  % Pasos de soluci�n
%h2 = (tF-t0)/M1; % At

E3 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M3);
t = E3(:,1);    % vector de tiempo
ya3 = E3(:,2);  % Soluci�n aproximada de la Ec. Dif.
y_v = -exp(-t)+t.^2-2*t+2; % Soluci�n verdadera de la Ecuaci�n Diferencial
figure(3);
plot(t,ya3,'r',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=100');
Error_Intervalo_40 = abs(y_v(M3)-ya3(M3))







%An�lisis con 1000 pasos de Iteraci�n
M4 = 1000;  % Pasos de soluci�n
%h2 = (tF-t0)/M1; % At


E4 = MetodoEuler('Ec_Dif_2a',t0,tF,y0,M4);
t = E4(:,1);    % vector de tiempo
ya4 = E4(:,2);  % Soluci�n aproximada de la Ec. Dif.
y_v = -exp(-t)+t.^2-2*t+2; % Soluci�n verdadera de la Ecuaci�n Diferencial
figure(4);
plot(t,ya4,'r',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=1000');
Error_Intervalo_40 = abs(y_v(M4)-ya4(M4))
%}

%------------------------ Ejercio 3 ------------------------------------
%{
t0=1900;
tF=2025;
y0=76,3; 

M1=20;

E1 = MetodoEuler('Ec_Dif_3',t0,tF,y0,M1);

t = E1(:,1);    % vector de tiempo
ya1 = E1(:,2);  % Soluci�n aproximada de la Ec. Dif.

figure(1);
plot(t,ya1);
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=20');

t = [t0;tF];
[t,ya1] = ode45('Ec_Dif_3',t,y0);

%t = E2(:,1);    % vector de tiempo
%ya1 = E2(:,2);  % Soluci�n aproximada de la Ec. Dif.

figure(2);
plot(t,ya1);
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=20');
%}




%------------------------ Ejercio 4 ------------------------------------
%{

% Metodo de Euler inciso 4

% Ejercicio 4
t0 = 0;   % Tiempo Inicial
tF = 5;   % Tiempo Final
y0 = 5000;   % Condici�n inicial


% Incizo a
% Analisis con h=1
M1 = tF-t0;  % Pasos de soluci�n
%h1 = (tF-t0)/M1; % At

E1 = MetodoEuler('Ec_Dif_4',t0,tF,y0,M1);
t = E1(:,1);    % vector de tiempo
ya1 = E1(:,2);  % Soluci�n aproximada de la Ec. Dif.
figure(1);
plot(t,ya1);
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('h=1');





% Ejercicio 4b
% Analisis con h=1/12
M2 = (tF-t0)*12;  % Pasos de soluci�n
%h1 = (tF-t0)/M1; % At

E2 = MetodoEuler('Ec_Dif_4',t0,tF,y0,M2);
t = E2(:,1);    % vector de tiempo
ya1 = E2(:,2);  % Soluci�n aproximada de la Ec. Dif.
figure(2);
plot(t,ya1);
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('h=1/12');



% Ejercicio 4c
% Analisis con h=1/360
M3 = (tF-t0)*360;  % Pasos de soluci�n
%h1 = (tF-t0)/M1; % At

E3 = MetodoEuler('Ec_Dif_4',t0,tF,y0,M3);
t = E3(:,1);    % vector de tiempo
ya1 = E3(:,2);  % Soluci�n aproximada de la Ec. Dif.
figure(3);
plot(t,ya1);
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('h=1/360');
%}


%------------------------ Ejercio 11 ------------------------------------
% Metodo de reunge-kutta Inciso 11 (moleculas) 
%{
t0=0;
tF=20;
y0=0; 

M1=200;

E1 = Runge_kutta('Ec_Dif_11',t0,tF,y0,M1);

t = E1(:,1);    % vector de tiempo
ya1 = E1(:,2);  % Soluci�n aproximada de la Ec. Dif.

figure(1);
plot(t,ya1); 
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=20');
%}
%------------------------ Ejercio 13 a ------------------------------------
%{
t0=0;
tF=1;
y0=[-2.7 2.8]; 

M1=200;

[T,X] = Runge_kutta_Matricial('Ec_Dif_13a',t0,tF,y0,M1);
t= T;    % vector de tiempo
x_t = X(:,1);  % soluci�n x(t)
y_t = X(:,2);  % soluci�n y(t)


figure(1);
plot(t,y_t)
grid
xlabel('t (s)');
ylabel('y')
title('M=200');

figure(1);
plot(t,x_t)
grid
xlabel('t (s)');
ylabel('X')
title('M=200');
%}

%------------------------ Ejercio 13 b ------------------------------------
%{
t0=0;
tF=2;
y0=[0.2 0.5]; 

M1=200;

[T,X] = Runge_kutta_Matricial('Ec_Dif_13b',t0,tF,y0,M1);
t= T;    % vector de tiempo
x_t = X(:,1);  % soluci�n x(t)
y_t = X(:,2);  % soluci�n y(t)


figure(1);
plot(t,y_t)
grid
xlabel('t (s)');
ylabel('y')
title('M=200');

figure(2);
plot(t,x_t)
grid
xlabel('t (s)');
ylabel('X')
title('M=200');
%}

%------------------------ Ejercio 13 c ------------------------------------
%{
t0=0;
tF=12;
y0=[2 3]; 

M1=200;

[T,X] = Runge_kutta_Matricial('Ec_Dif_13c',t0,tF,y0,M1);
t= T;    % vector de tiempo
x_t = X(:,1);  % soluci�n x(t)
y_t = X(:,2);  % soluci�n y(t)


figure(1);
plot(t,y_t)
grid
xlabel('t (s)');
ylabel('y')
title('M=200');

figure(2);
plot(t,x_t)
grid
xlabel('t (s)');
ylabel('X')
title('M=200');
%}

%------------------------ Ejercio 14 ------------------------------------

t0=0;
tF=10;
y0=[3000 120]; 

M1=100;

[T,X] = Runge_kutta_Matricial('Ec_Dif_14',t0,tF,y0,M1);
t= T;    % vector de tiempo
x_t = X(:,1);  % soluci�n x(t)
y_t = X(:,2);  % soluci�n y(t)


figure(1);
plot(t,y_t)
grid
xlabel('t (s)');
ylabel('y')
title('Zorros');

figure(2);
plot(t,x_t)
grid
xlabel('t (s)');
ylabel('X')
title('Conejos');

figure(3);
plot(x_t,y_t)
grid
xlabel('�onejos(t)');
ylabel('zorros(t)')
title('Conejos vs zorros');