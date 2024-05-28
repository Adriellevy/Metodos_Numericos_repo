%----------------------- Ejercicio 2 ----------------------
%i) 
%{
x=[0 0.2 0.4 0.6 0.8 1];
y=exponential_function(x);

[c,L]=Interp_Lagrange_pessana(x,y)
plot(x,y,'r',x,Copy_of_Eval_Polinomio(x,c),'bo');
hold on; 


%}
%ii) 
%{
x=[0 0.2 0.4 0.6 0.8 1];
y=sin(x);

[c,L]=Interp_Lagrange_pessana(x,y);
plot(x,y,'r',x,Copy_of_Eval_Polinomio(x,c),'bo');


%}
%iii) 
%{
x=[0 0.2 0.4 0.6 0.8 1];
y=(x+1).^(x+1);

[c,L]=Interp_Lagrange_pessana(x,y);
plot(x,y,'r',x,Copy_of_Eval_Polinomio(x,c),'bo');


%}
%----------------------- Ejercicio 3 ----------------------
%lo mismo que el anterior
%----------------------- Ejercicio 4 ----------------------
%a
%{
x=[0 1 3];
y=2*sin(pi*x/6);
[c,L]=Interp_Lagrange_pessana(x,y);
X=[0:0.1:3]
y=2*sin(pi*X/6);
plot(X,y,'r',X,Copy_of_Eval_Polinomio(X,c),'bo');
hold on
x0=[2 2.4]; 
y0=2*sin(pi*x0/6);
plot(x0,y0,'r*',x0,Copy_of_Eval_Polinomio(x0,c),'b*');

%}
%b
%{
x=[0 1 3 5];
y=2*sin(pi*x/6);
[c,L]=Interp_Lagrange_pessana(x,y);

X=[0:0.1:6];
y=2*sin(pi*X/6);
plot(X,y,'r',X,Copy_of_Eval_Polinomio(X,c),'bo');
hold on
x0=[2 2.4]; 
y0=2*sin(pi*x0/6);
plot(x0,y0,'r*',x0,Copy_of_Eval_Polinomio(x0,c),'b*');
%}
%----------------------- Ejercicio 5 ----------------------
% es lo mismo que el 4
%----------------------- Ejercicio 7 ----------------------
%i
%{
x=[0 0.2 0.4 0.6 0.8 1];
y=exponential_function(x);

[c,L]=Interp_Newton_pessana(x,y)
plot(x,y,'r',x,Copy_of_Eval_Polinomio(x,c),'bo');
hold on; 
%}
%ii
%{
x=[0 0.2 0.4 0.6 0.8 1];
y=sin(x);

[c,L]=Interp_Newton_pessana(x,y)
plot(x,y,'r',x,Copy_of_Eval_Polinomio(x,c),'bo');
%}
%iii
%{
x=[0 0.2 0.4 0.6 0.8 1];
y=(x+1).^(x+1);

[c,L]=Interp_Newton_pessana(x,y)
plot(x,y,'r',x,Copy_of_Eval_Polinomio(x,c),'bo');
%}
%----------------------- Ejercicio 8 ----------------------
%lo mismo que el anterior
%----------------------- Ejercicio 9 ----------------------
%lo mismo que el anterior
%a
%{
x=[0 1 3];
y=2*sin(pi*x/6);
[c,L]=Interp_Newton_pessana(x,y);
X=[0:0.1:5]
y=2*sin(pi*X/6);
plot(X,y,'r',X,Copy_of_Eval_Polinomio(X,c),'bo');
hold on
x0=[4 3.5]; 
y0=2*sin(pi*x0/6);
plot(x0,y0,'r*',x0,Copy_of_Eval_Polinomio(x0,c),'b*');
%}
%b
%{
x=[0 1 3 5];
y=2*sin(pi*x/6);
[c,L]=Interp_Newton_pessana(x,y);
X=[0:0.1:5]
y=2*sin(pi*X/6);
plot(X,y,'r',X,Copy_of_Eval_Polinomio(X,c),'bo');
hold on
x0=[4 3.5]; 
y0=2*sin(pi*x0/6);
plot(x0,y0,'r*',x0,Copy_of_Eval_Polinomio(x0,c),'b*');
%}
%----------------------- Ejercicio 11 ----------------------
X=[-3 -2 1 4]; 
Y=[2 0 3 1];
MC=Spline_Cubica_pessana(X,Y);
N=size(MC,1);
L=100; % Cantidad de puntos entre intervalos de X discretos
x=zeros(N,L+1); % Matriz de abscisas (101 puntos por cada intervalo)
for k=1:N
    d=(X(k+1)-X(k))/L; % Armado de abscisas temporales para los 
    x(k,:)=X(k):d:X(k+1); % Polinomios spline cúbicos
end    
F1=figure(1);
set(F1,'position',[140 20 900 650],'Menubar','none',...
        'NumberTitle','off','name', 'Ejercicio 11c. TP#5. Métodos Numéricos');
plot(X,Y,'*r') % Nube de puntos originales
xlabel('x')
ylabel('y(x)')
hold on
grid

% Armado y graficado de los polinomios interpoladores con mejor resolución
Poli_Int=zeros(N,length(x));
for k=1:N
    Poli_Int(k,:) = Eval_Polinomio2(x(k,:),MC(k,:),X(k));
    plot(x(k,:),Poli_Int(k,:))
    hold on
end

