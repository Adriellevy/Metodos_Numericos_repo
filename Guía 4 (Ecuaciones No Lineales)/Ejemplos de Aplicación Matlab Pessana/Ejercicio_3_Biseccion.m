%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio Nro. 3
%%%
%%% Evaluación de Método de Bisección (Bolzano)
%%%
%%% TP.4 Métodos Numéricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

delta = 0.000000000001;
Ax=0.01;
% Inciso 3a
a=-2.4;
b=-1.6;
disp('Ejercicio 3a')
[r,err,y_r] = Biseccion_Bolzano('Funcion_3a',a,b,delta);
disp(strcat('r=',num2str(r),'; Error=',num2str(err),'; f(r)=',num2str(y_r)))
H1=figure(1);
set(H1,'position',[100 120 900 550],'Menubar','none',...
        'NumberTitle','off','name','MN. TP#4. Ejercicio 3a');
x=a-3:Ax:b+4;
z=zeros(size(x));
y=Funcion_3a(x);
plot(x,y,'r',x,z,'b')
grid
xlabel('x')
ylabel('y(x)')

% Inciso 3b
a=0.8;
b=1.6;
disp('Ejercicio 3b')
[r,err,y_r] = Biseccion_Bolzano('Funcion_3b',a,b,delta);
disp(strcat('r=',num2str(r),'; Error=',num2str(err),'; f(r)=',num2str(y_r)))
H2=figure(2);
set(H2,'position',[140 140 900 550],'Menubar','none',...
        'NumberTitle','off','name','MN. TP#4. Ejercicio 3b');
x=a-2:Ax:b+3;
z=zeros(size(x));
y=Funcion_3b(x);
plot(x,y,'r',x,z,'b')
grid
xlabel('x')
ylabel('y(x)')

% Inciso 3c
a=3.2;
b=4;
disp('Ejercicio 3c')
[r,err,y_r] = Biseccion_Bolzano('Funcion_3c',a,b,delta);
disp(strcat('r=',num2str(r),'; Error=',num2str(err),'; f(r)=',num2str(y_r)))
H3=figure(3);
set(H3,'position',[180 160 900 550],'Menubar','none',...
        'NumberTitle','off','name','MN. TP#4. Ejercicio 3c');
x=a-3:Ax:b+3;
z=zeros(size(x));
y=Funcion_3c(x);
plot(x,y,'r',x,z,'b')
grid
xlabel('x')
ylabel('y(x)')

% Inciso 3d
a=6;
b=6.8;
disp('Ejercicio 3c')
[r,err,y_r] = Biseccion_Bolzano('Funcion_3d',a,b,delta);
disp(strcat('r=',num2str(r),'; Error=',num2str(err),'; f(r)=',num2str(y_r)))
H4=figure(4);
set(H4,'position',[220 180 900 550],'Menubar','none',...
        'NumberTitle','off','name','MN. TP#4. Ejercicio 3d');
x=a-3:Ax:b+3;
z=zeros(size(x));
y=Funcion_3d(x);
plot(x,y,'r',x,z,'b')
grid
xlabel('x')
ylabel('y(x)')