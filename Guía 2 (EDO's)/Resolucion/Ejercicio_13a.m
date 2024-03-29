%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio 13a 
%%%
%%% Cálculo Numérico
%%% FRBA
%%% Universidad Tecnológica Nacional
%%%
%%% Dr. Ing. Franco Martin Pessana
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

t0 = 0;   % Tiempo Inicial
tF = 1;   % Tiempo Final
X0 = [-2.7 2.8]; % Condición inicial
h = 0.05;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de solución
[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_13a',t0,tF,X0,M);

t= T;    % vector de tiempo
x_t = X(:,1);  % solución x(t)
y_t = X(:,2);  % solución y(t)

xv_t = -(69/25)*exp(-t)+(3/50)*exp(4*t);
yv_t = (69/25)*exp(-t)+(1/25)*exp(4*t);
H1=figure(1);
set(H1,'name','Ejercicio#13a. h=0.05','position',[10 20 1450 800],...
    'menubar','none');
plot(x_t,y_t,'r',xv_t,yv_t,'b');
grid
xlabel('x(t) (s)');
ylabel('y(t). Sol. Aprox. roja; Sol. Verd. Azul');
