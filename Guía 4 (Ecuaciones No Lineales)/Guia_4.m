%-----------------------------Ejercicio 3 --------------------------
%{
epsilon = 0.0000000000001;
Max=30;

% Inciso a
a=-2.4;
b=-1.6;
disp('Ejercicio 3a): k   ak   ck   bk   f(ck)');
[r,err,y_r,M] = Falsa_posicion('Funcion_3a',a,b,Max,epsilon);
M
pause;
% Inciso b
a=0.8;
b=1.6;
disp('Ejercicio 3b): k   ak   ck   bk   f(ck)');
[r,err,y_r,M] = Falsa_posicion('Funcion_3b',a,b,Max,epsilon);
M
pause;
% Inciso c
a=3.2;
b=4;
disp('Ejercicio 3c): k   ak   ck   bk   f(ck)');
[r,err,y_r,M] = Falsa_posicion('Funcion_3c',a,b,Max,epsilon);
M
pause;
% Inciso d
a=6;
b=6.8;
disp('Ejercicio 3d): k   ak   ck   bk   f(ck)');
[r,err,y_r,M] = Falsa_posicion('Funcion_3d',a,b,Max,epsilon);
M



%Comparacion de metodos con funcion 3a
disp("comparacion de metodos")
epsilon = 0.000000000000001;
Max=50;
a=-2.4;
b=-1.6;
r1 = Biseccion('Funcion_3a',a,b,Max,epsilon)
disp('Ejercicio 3a): k   ak   ck   bk   f(ck)');
[r,err,y_r,M] = Falsa_posicion('Funcion_3a',a,b,Max,epsilon);
disp(M)
%}
%-----------------------------Ejercicio 4 --------------------------
%{
epsilon = 0.000000000000001;
Max=50;
a=0;
b=2;
r1 = Biseccion('Funcion_4',a,b,Max,epsilon)
disp('Ejercicio 4): k   ak   ck   bk   f(ck)');
[r,err,y_r,M] = Falsa_posicion('Funcion_4',a,b,Max,epsilon);
disp(M)
%}

%-----------------------------Ejercicio 8 --------------------------
%{
epsilon = 0.000000000000001;
Max=4000;
dx=0.001;
x0=-2;
xf=2;


% Define the range of the variable
x = x0:0.0001:xf;

% Call the function
y = Funcion_8(x);

% Create the plot
figure;
plot(x, y);
title('Plot of the function');
xlabel('x');
ylabel('y');
grid on;
hold on
[r,err,y_k] = Raices_reales('Funcion_8',x0,xf,N,epsilon); 
plot(r,zeros(size(r)),'ro'); 
%}

%-----------------------------Ejercicio 11 --------------------------

epsilon = 0.000000000000001;
Max=4000;
dx=0.001;
x0=-2;
xf=2;


% Define the range of the variable
x = x0:0.0001:xf;

% Call the function
y = Funcion_8(x);

% Create the plot
figure;
plot(x, y);
title('Plot of the function');
xlabel('x');
ylabel('y');
grid on;
hold on
[r,err,y_k] = Raices_reales('Funcion_8',x0,xf,N,epsilon); 
plot(r,zeros(size(r)),'ro'); 
%}