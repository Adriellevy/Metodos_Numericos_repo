
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 3 TP#5 Métodos Numéricos
%%%
%%% Interpolación Polinomial de 5 grado por Pol. Lagrange
%%% Ejercicio de las temperaturas
%%%
%%% function [C,L] = Interp_Lagrange(X,Y)
%%% Dr. Ing. Franco Pessana
%%% Período Lectivo 2015
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [C]=Ejercicio_3

Xk = [1 2 3 4 5 6];
Yk = [66 66 65 64 63 63];
[C,L] = Interp_Lagrange(Xk,Yk);
x=[1:.1:6];
%y_k=feval(f,x);
y_poli=Eval_Polinomio(x,C);
figure(1)
plot(Xk,Yk,'r*',x,y_poli,'b');
grid;
ylabel('real red - P_5L(x) blue');
xlabel('x');
C=C';



