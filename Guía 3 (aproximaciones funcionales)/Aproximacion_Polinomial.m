function [ C ] = Aproximacion_Polinomial(X,Y,M)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 6 TP#3 Métodos Numéricos
%%%
%%% Aproximación Polinomial por Mínimos Cuadrados:
%%%
%%%  y=c1+c2*x+c3*x^2+c4*x^3+...+cM+1*x^M
%%%
%%% function [C] = Ajuste_Polinomial(X,Y,M)
%%%
%%% Parámetros de Entrada:
%%%
%%%       Y = vector 1xN con las ordenadas aproximar por Aproximación Polinomial
%%%       x = vector 1xN con las abscisas 
%%%       M = Orden del polinomio de a aproximar
%%%
%%% Parámetros de Salida:
%%%
%%%      C = Coeficientes de la Señal aproximada por Serie Polinomial (orden creciente de potencia)
%%%          Se entregan los coeficientes en potencias decrecientes de x,
%%%          es decir C = [CM+1 CM CM-1 ... C3 C2 C1]
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if nargin<3
    disp('Debe ingresar X, Y y M');
    return;
end
N=length(X);
F=zeros(N,M+1);
for j=1:M+1
    F(:,j)=X.^(M-j+1);
end    
A=F'*F;
B=F'*Y;

C=Triang_Gauss_pessana(A,B); % Triangularización Gaussiana y Back Substitution realizado en TP1
%C=A\B; % La forma directa que realiza MatLab

end

