%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio Nro. 9 TP#1 Métodos Numéricos
%%%
%%% Solución de Sistemas de ecuaciones
%%% con matrices tridiagonales
%%%
%%% En este método se reciben las matrices A y B y se
%%% triangula el sistema de ecuaciones, pero se trabaja
%%% en forma vectorial para encontrar las soluciones
%%% del sistema pensando en la futura interpolación
%%% por Spline Cúbicas de la Unidad#5 de MN.
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function X=Sol_Sist_Tridiag(A,B)

N=length(B);
a=diag(A,-1);
b=diag(A);
c=diag(A,1);
for k=1:N-1
    Piv=a(k)/b(k);
    b(k+1)=b(k+1)-Piv*c(k);
    B(k+1)=B(k+1)-Piv*B(k);
end
X=zeros(N,1);
X(N)=B(N)/b(N);
for k=N-1:-1:1
    X(k)=(B(k)-c(k)*X(k+1))/b(k);
end










