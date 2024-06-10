%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejemplo Splines Cúbicas
%%% 
%%% Ejemplo para ver el uso de la función de interpolación
%%% Spline Cúbica
%%%
%%% S(x)=Sk(x)=s3k*(x-xk)^3+s2k(x-xk)^2+s1k(x-xk)+sok
%%%
%%% Se trabaja con Spline cúbica natural S''(x0)=S''(xN)=0
%%%
%%% Dr. Ing. Franco Martin Pessana
%%% Métodos Numéricos
%%% Universidad Favaloro
%%% Facultad de Ingeniería y Ciencias Exactas y Naturales
%%% PL 2021
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

%%% puntos a interpolar %%%
X=[0;1;2;3];
Y=[0;.5;2;1.5];

MC=Spline_Cubica(X,Y);
N=size(MC,1);
L=100; % Cantidad de puntos entre intervalos de X discretos
x=zeros(N,L+1); % Matriz de abscisas equiespaciadas
for k=1:N
    d=(X(k+1)-X(k))/L; % Armado de abscisas temporales para los 
    x(k,:)=X(k):d:X(k+1); % Polinomios spline cúbicos
end    
F1=figure(1);
set(F1,'position',[140 20 900 650],'Menubar','none',...
        'NumberTitle','off','name', 'Ejemplo de Spline Cúbico');
plot(X,Y,'*r') % Nube de puntos originales
xlabel('x')
ylabel('y(x)')
hold on
grid

Poli_Int=zeros(N,length(x));
for k=1:N
    Poli_Int(k,:) = Eval_Polinomio2(x(k,:),MC(k,:),X(k));
    plot(x(k,:),Poli_Int(k,:))
    hold on
end
hold off