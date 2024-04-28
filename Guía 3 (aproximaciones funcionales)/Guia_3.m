%-------------------------    Ejercicio 2a (Aprox. Lineal) ------------------------
%{
    Aplicacion del algoritmo de aproximacion lineal

figure;
clc
disp('Ejercicio 2A')
Vect2aX=[-2 -1 0 1 2]';
Vect2aY=[1 2 3 3 4]'; 
resu = Aproximacion_Lineal(Vect2aX,Vect2aY); 
res = Ajuste_Lineal_MC(Vect2aX,Vect2aY);


disp('La Aproximacion lineal Hecha por mi:'); 
disp(resu);
disp('La Aproximacion lineal Hecha por el profesor:');
disp(res);


% Graficar los puntos
plot(Vect2aX, Vect2aY, 'o');
hold on;
% Calcular y graficar la recta
x_line = linspace(min(Vect2aX), max(Vect2aX), 100);
y_line = resu(1) * x_line + resu(2);
plot(x_line, y_line);

% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
legend('Puntos', 'Recta');

% Finalizar la retención del gráfico
hold off;
pause(2)
clf
clear

%}

%-------------------------    Ejercicio 2b (Aprox. Lineal) ------------------------
%{
Aplicacion del algoritmo de aproximacion lineal
disp('Ejercicio 2B')
Vect2bX=[-6 -2 0 2 6]';
Vect2bY=[7 5 3 2 0]'; 
resu = Aproximacion_Lineal(Vect2bX,Vect2bY); 
res = Ajuste_Lineal_MC(Vect2bX,Vect2bY);


disp('La Aproximacion lineal Hecha por mi:'); 
disp(resu);
disp('La Aproximacion lineal Hecha por el profesor:');
disp(res);

% Graficar los puntos
plot(Vect2bX, Vect2bY, 'o');
hold on;
% Calcular y graficar la recta
x_line = linspace(min(Vect2bX), max(Vect2bX), 100);
y_line = resu(1) * x_line + resu(2);
plot(x_line, y_line);

% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
legend('Puntos', 'Recta');

% Finalizar la retención del gráfico
hold off;
pause(2)
clf
clc
clear
%}

%-------------------------    Ejercicio 2c (Aprox. Lineal)------------------------
%{
    Aplicacion del algoritmo de aproximacion lineal
    

disp('Ejercicio 2c')
Vect2cX=[-4 -1 0 2 3]';
Vect2cY=[-3 -1 0 1 2]'; 
resu = Aproximacion_Lineal(Vect2cX,Vect2cY); 
res = Ajuste_Lineal_MC(Vect2cX,Vect2cY);

disp('La Aproximacion lineal  Hecha por mi:'); 
disp(resu);
disp('La Aproximacion lineal Hecha por el profesor:');
disp(res);

% Graficar los puntos
plot(Vect2cX, Vect2cY, 'o');
hold on;
% Calcular y graficar la recta
x_line = linspace(min(Vect2cX), max(Vect2cX), 100);
y_line = resu(1) * x_line + resu(2);
plot(x_line, y_line);

% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
legend('Puntos', 'Recta');

% Finalizar la retención del gráfico
hold off;
pause(2)
close
clf
%}

%-------------------------    Ejercicio 4b (Aprox. exponencial)------------------------ 
%{    
disp('Ejercicio 4a')
x = [linspace(0, 2, 100)]'; %genero un espacio de prueba
y = exp(x);
resul = Aproximacion_Exponencial(x,y);

ypredict = exp(resul(2)) * exp(resul(1) * x);

% Graficar los puntos
plot(x, y, 'o');
hold on
plot(x, ypredict,'r'); 

% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
legend('Funcion real', ['Funcion Aproximada, Error cuadratico medio: ',num2str(resul(3))]);
hold off
%}

%-------------------------    Ejercicio 4d (aprox. Potencial) ------------------------
%{
%    Aplicacion de La Aproximacion Potencial

disp('Ejercicio 4d')
x = [linspace(-50, 50, 100)]'; %genero un espacio de prueba
y = x.^3;

resul = Aproximacion_Potencial(x,y);

ypredict = exp(resul(2))*(x.^resul(1));
disp(resul(1))
% Graficar los puntos
plot(x, y, 'o');
hold on
plot(x, ypredict,'r'); 

% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
legend('Funcion real', ['Funcion Aproximada, Error cuadratico medio: ',num2str(resul(3))]);
hold off
%}
%-------------------------    Ejercicio 4c (aprox. Lineal Inverso) ------------------------
%{

%    Aplicacion de La Aproximacion Potencial
disp('Ejercicio 4d')
x = [linspace(3, 50, 100)]'; %genero un espacio de prueba
y = 1./x;

resul = Aproximacion_Inversamente_Lineal(x,y);

ypredict = 1./(resul(1).*x+resul(2));
disp(resul(1))
% Graficar los puntos
plot(x, y, 'o');
hold on
plot(x, ypredict,'r'); 

% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
legend('Funcion real', ['Funcion Aproximada, Error cuadratico medio: ',num2str(resul(3))]);
hold off
%}

%-------------------------    Ejercicio 4c (aprox. de raylight) ------------------------

%{
%    Aplicacion de La Aproximacion Potencial
disp('Ejercicio 4d')
x = [linspace(1, 5, 100)]'; %genero un espacio de prueba
y = x.*exp(x);

resul = Aproximacion_Reyleigh(x,y);

ypredict = exp(resul(2)).*exp(-resul(1).*x);
disp(resul(1))
% Graficar los puntos
plot(x, y, 'o');
hold on
plot(x, ypredict,'r'); 

% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
legend('Funcion real', ['Funcion Aproximada, Error cuadratico medio: ',num2str(resul(3))]);
hold off
%}

%-------------------------    Ejercicio 6 (aprox. Polinomial) ------------------------

%{
%    Aplicacion de La Aproximacion Potencial
disp('Ejercicio 4d')
x = [linspace(1, 5, 100)]'; %genero un espacio de prueba
y = x.*exp(x);

resul = Aproximacion_Reyleigh(x,y);

ypredict = exp(resul(2)).*exp(-resul(1).*x);
disp(resul(1))
% Graficar los puntos
plot(x, y, 'o');
hold on
plot(x, ypredict,'r'); 

% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
legend('Funcion real', ['Funcion Aproximada, Error cuadratico medio: ',num2str(resul(3))]);
hold off
%}