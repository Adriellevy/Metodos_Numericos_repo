%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Evaluación de Polinomio de Grado N en x0.
%%% Forma de evalucción por Ruffini
%%%
%%% Variables de entrada:
%%%
%%%         x0: Punto del eje real donde se evalua el polinomio
%%%         A: Coeficientes del polinomio a evaluar (Orden decrec.)
%%%
%%% Variables de Salida:
%%%
%%%         P_X0: Polinomio evaluado en el punto x0 
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function P_X0=Eval_Poli(A,x0)

N=length(A)-1;
B=zeros(size(A));
B(1)=A(1);
for k=2:N+1
    B(k)=A(k)+x0*B(k-1);
end
P_X0=B(N+1);