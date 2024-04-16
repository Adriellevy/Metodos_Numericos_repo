%%% Parámetros de Entrada:
%%%       f  = f(t,y) ingresada como cadena (script)
%%%       t0 = Tiempo inicial de análisis de la Ecuacion Diferencial
%%%       tf = Tiempo inicial de análisis de la Ecuacion Diferencial
%%%       y0 = y(t0) Condicion de la ED de primer orden
%%%       M = Número de pasos del método
%%%
%%% Parámetros de Salida:
%%%      Matiz E = [T Y], siendo: 
%%%         T = Vector Columna Tiempo
%%%         Y = Vector Columna Solución de la Ecuación Diferencial
%%%
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [T,X] = Runge_kutta_Matricial(F,t0,tf,X0,M)

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