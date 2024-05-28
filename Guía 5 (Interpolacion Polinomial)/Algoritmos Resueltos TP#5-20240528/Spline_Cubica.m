%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Interpolación por Splines Cúbicas
%%% 
%%% Se recibe un conjunto de (N+1) puntos a interpolar:
%%%
%%% (x0,y0),(x1,y1),(x2,y2)...(xk,yk),...,(xN,yN)
%%% 
%%% Se arma un sistema de N-1 ecuaciones para las derivadas
%%% segundas de S(xk), es decir, S''(xk), contando con 
%%% un sistema lineal tridiagonal y se entrega una matriz de
%%% N filas por 4 columnas conteniendo los coeficientes en
%%% potencias decrecientes de x de la función S(x) con cada
%%% uno de los polinomios interpoladores de k=0,1,2,...,N-1
%%%
%%% S(x)=Sk(x)=s3,k*(x-xk)^3+s2,k(x-xk)^2+s1,k(x-xk)+s0,k
%%%
%%% Se trabaja con Spline cúbica natural, es decir, con
%%% la condición S''(x0=a)=S''(xN=b)=0
%%%
%%% Dr. Ing. Franco Martin Pessana
%%% Métodos Numéricos
%%% Universidad Favaloro
%%% Facultad de Ingeniería y Ciencias Exactas y Naturales
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Mat_S=Spline_Cubica(X,Y)

N=length(X)-1; % N+1 cantidad de puntos a interpolar
hk=diff(X);   % Armado de h(k)=x(k+1)-x(k)
dk=diff(Y)./hk; % Armado de dk=(y(k+1)-y(k))/h(k)
m0=0; % Constantes para Spline suavizada, es decir,
mN=0; % derivadas segundas en extremos nulas.
a=hk(2:N-1); % Armado de diagonal inf. para N-1 ecuaciones de mk 
b=2*(hk(1:N-1)+hk(2:N)); % armado de diagonal principal
c=hk(2:N-1); % Armado de diagonal sup. para N-1 ecuaciones de mk 
uk=6*diff(dk); % Vector Ind. Otra forma: uk=6*(dk(2:N)-dk(1:N-1));
B=uk;
B(1)=uk(1)-hk(1)*m0;    % Condiciones para una 
B(N-1)=uk(N-1)-hk(N-1)*mN; % Spline cúbica suavizada
%%%%% Cálculo de m1,m2,mN-1 para el sistema tridiagonal:
mk=zeros(N+1,1);
mk(1)=m0;
mk(N+1)=mN;
N1=N-1;
for k=2:N1
    Piv=a(k-1)/b(k-1);
    b(k)=b(k)-Piv.*c(k-1); % Triangulación inferior del 
    B(k)=B(k)-Piv*B(k-1);  % Sistema tridiagonal
end
X=zeros(N1,1);
X(N1)=B(N1)/b(N1);
for k=N1-1:-1:1   % Sustitución hacia atrás para cálculo de mk
    X(k)=(B(k)-c(k)*X(k+1))/b(k);
end
mk(2:N)=X;
Mat_S=zeros(N,4); % Inicializ. de matriz de constantes de Spline
for k=0:N-1
    Mat_S(k+1,1)=(mk(k+2)-mk(k+1))/(6*hk(k+1));
    Mat_S(k+1,2)=mk(k+1)/2;  % Armado de los Ck del spline cúbico
    Mat_S(k+1,3)=dk(k+1)-hk(k+1)*(2*mk(k+1)+mk(k+2))/6;
    Mat_S(k+1,4)=Y(k+1);
end