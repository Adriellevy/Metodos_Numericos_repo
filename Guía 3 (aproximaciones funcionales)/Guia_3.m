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
%Aplicacion del algoritmo de aproximacion lineal
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
%    Aplicacion del algoritmo de aproximacion lineal
    

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
x = [linspace(0.001, 50, 100)]'; %genero un espacio de prueba
y = x.^3;

resul = Aproximacion_Potencial(x,y)

ypredict = exp(resul(2))*(x.^resul(1));
disp(resul(1))
% Graficar los puntos
plot(x, y, 'o');
hold on
plot(x, ypredict,'r'); 
grid

% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
legend('Funcion real', ['Funcion Aproximada, Error cuadratico medio: ',num2str(resul(3))]);
hold off
%}
%-------------------------    Ejercicio 4c (aprox. Lineal Inverso) ------------------------
%{

%    Aplicacion de La Aproximacion Lineal inversa 1/(ax +b)
disp('Ejercicio 4d')
x = [linspace(-50, 50, 100)]'; %genero un espacio de prueba
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
%-------------------------    Ejercicio 4d (aprox. de raylight) ------------------------
%{
%    Aplicacion de La Aproximacion rayleight a*X*e^(-bx)
disp('Ejercicio 4d')
x = [linspace(0.001, 5, 100)]'; %genero un espacio de prueba
y = x.*exp(-x);

resul = Aproximacion_Reyleigh(x,y);

ypredict = exp(resul(2)).*x.*exp(resul(1).*x);
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
%-------------------------    Ejercicio 5 (aprox. Polinomial planetas) ------------------------
%{
%    Aplicacion de La Aproximacion Potencial planetas
disp('Ejercicio 5')
DSol= [57.59 108.11 149.57 227.84 778.14 1427.0 2870.3 4499.9 5909.0]';

PSid = [87.99 224.7 365.26 686.98 4332.4 10759 30684 60188 90710]'; 

resul = Aproximacion_Potencial(DSol,PSid);
ypredict = exp(resul(2)).*(DSol.^resul(1));

disp(resul(1))
% Graficar los puntos
plot(DSol, PSid, 'o');
hold on
plot(DSol, ypredict,'r'); 

% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
legend('Funcion real', ['Funcion Aproximada, Error cuadratico medio: ',num2str(resul(3))]);
hold off
%}
%-------------------------    Ejercicio 6 y 7 (aprox. Aproximacion Polinomial y minimos Cuadrados) --------------
%{
%    Aplicacion de La Aproximacion Polinomial
disp('Ejercicio 6 y 7')
x=[0 0.15 0.31 0.5 0.6 0.75]';
y=[1.0 1.004 1.031 1.117 1.223 1.422]'; 
dx=0.01;
X=min(x):dx:max(x);
ypredict=0;
Cols=['b' 'g' 'm' 'k'];
M =[1,2,3,4]';

%Grafico la recta
plot(x, y, 'rO');
hold on 
for i=1:length(M)
    Coeficientes = Aproximacion_Polinomial(x,y,M(i));
    ypredict(1)=0;
    for j = 1:length(x)
        yEval(j)=Eval_Polinomio_Rapida_Pessana(x(j),Coeficientes);
    end  

    % Graficar los polinomios    
    plot(x,yEval,Cols(i)); 
    hold on
end
disp(yEval)



% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
%legend('Funcion real', ['Funcion Aproximada, Error cuadratico medio: ',num2str(resul(3))]);
hold off
%}
%-------------------------    Ejercicio 10 (aprox. Aproximacion STF) --------------
%{
%    Aplicacion de La Aproximacion por serie trigonometrica de fourrier
disp('Ejercicio 10')
t=0:11;
y1=[18.9 18.9 18.3 17.7 17.2 16.7 16.1 15.5 15.5 15.5 15.0 14.4]'; 
y2=[14.4 14.4 14.4 14.4 13.8 13.8 13.8 14.4 15.5 17.7 19.4 20.0]';
y3=[10.4 8.4 7.4 3.4 15.8 17.8 19.8 10.4 10.5 19.7 10.4 11.0]';
M =6;
[T1,Y_STF1]=Aproximacion_Serie_Trig_Fourier(t,y1,M);
[T2,Y_STF2]=Aproximacion_Serie_Trig_Fourier(t,y2,M);
[T3,Y_STF3]=Aproximacion_Serie_Trig_Fourier(t,y3,M);


plot(t,y1,'ro',T1,Y_STF1,'g')
hold on
plot(t,y2,'bo',T2,Y_STF2,'r')
plot(t,y3,'yo',T3,Y_STF3,'k')

title('Serie Trigonométrica de Fourier de set de datos')
%%plot(T,Y_STF)
% Agregar etiquetas a los ejes
xlabel('x');
ylabel('y');

% Mostrar la leyenda
%legend('Funcion real', ['Funcion Aproximada, Error cuadratico medio: ',num2str(resul(3))]);
hold off
%}
%-------------------------    Ejercicio 11 (aprox. Aproximacion STF) --------------

%    Aplicacion de La Aproximacion por serie trigonometrica de fourrier
%{
clear
clc

T = 5;
Per = 3;
Dt = 0.01;          % Intervalo de Tiempo
w0 = 2*pi/T;
t=0:Dt:Per*T-Dt;      % Eje temporal discreto
y_t = 5*(sawtooth(w0*t)+1)/4;        % Pulso Triangular
M=[5 20 50 200];  % Límites de suma a desarrollar
Cols=['r' 'b' 'c' 'm' 'k'];  % Colores de graficado
H=figure(1);
set(H,'NumberTitle','off','Menubar','none',...
    'name','Serie de Fourier de Señal Rectangular',...
    'position',[20 30 1000 700]);
plot(t,y_t,Cols(1));
hold on;
for i=1:length(M)
    [T,Ya]=Aproximacion_Serie_Trig_Fourier(t',y_t',M(i));
    plot(T,Ya,Cols(i+1));
    hold on;
end
xlabel('t');
ylabel('y(t)');
title('Serie Trigonométrica de Fourier de Pulso Triangular')
legend('y(t)','M=5','M=20','M=50','M=200');
grid
%}
