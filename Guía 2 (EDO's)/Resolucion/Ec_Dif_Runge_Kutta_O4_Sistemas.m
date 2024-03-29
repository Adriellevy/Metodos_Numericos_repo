%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio Nro. 12 TP#2 Métodos Numéricos
%%%
%%% Resolución de Sistemas Ecuaciones Diferenciales de primer Orden:
%%%         x1'=f1(t,x1,x2,...,xn)
%%%         x2'=f2(t,x1,x2,...,xn)
%%%         x3'=f3(t,x1,x2,...,xn)
%%%              :   :   :
%%%         xn'=fn(t,x1,x2,...,xn)
%%%
%%% Método de RUNGE-KUTTA Orden 4
%%%
%%% function [T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas(F,t0,tf,X0,M)
%%%
%%% Parámetros de Entrada:
%%%       F  = AX+B Nombre del Sistema de EC de Primer Orden (Contenido en forma Matricial en un script MatLab)
%%%       t0 = Tiempo inicial de análisis de la Ecuacion Diferencial
%%%       tf = Tiempo final de análisis de la Ecuacion Diferencial
%%%       X0 = [x1(t0) x2(t0) x3(t0)...xn(t0)] Condicion inicial del Sietema de ED de primer orden
%%%       M = Número de pasos del método
%%%
%%% Parámetros de Salida:
%%%
%%%      T: Vector Columna de tiempo
%%%      X = Matriz resultado. Col#1: vector Solución x1; Col#2: Vector
%%%      solución x2...;Col#n: vector solución xn
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas(F,t0,tf,X0,M)

if nargin<5
    disp('Debe ingresar función F, tiempos iniciales y finales t0, tf, vector columna de condiciones iniciales X0 y pasos M');
    return;
end

h=(tf-t0)/M; % Intervalo de tiempo Delta_t
T=t0:h:tf;  % Vector de Tiempo (M+1 valores)
X=zeros(M+1,length(X0));
X(1,:)=X0;    
for k=1:M
    f1=feval(F,T(k),X(k,:));
    f2=feval(F,T(k)+h/2,X(k,:)+h*f1/2);
    f3=feval(F,T(k)+h/2,X(k,:)+h*f2/2);
    f4=feval(F,T(k)+h,X(k,:)+h*f3);
    X(k+1,:)=X(k,:)+h*(f1+2*f2+2*f3+f4)/6;
end
T = T';