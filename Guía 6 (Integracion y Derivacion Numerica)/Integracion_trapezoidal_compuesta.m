function S = Integracion_trapezoidal_compuesta(F,a,b,M)
%INTEGRACION_TRAPEZOIDAL_COMPUESTA numerica mediante el metodo trapezoidal compuesta
%   recibo: 
%   F = la funcion a pasar
%   a = Limite superior
%   b = Limite inferior 
%   M = la cantidad maxima de iteraciones
h=(b-a)/M;
sum=0;
x0=a; 
xf=b;

for k=1:M-1
    sum = sum +feval(F,xo+k*h);
end
S = (feval(F,x0)+feval(F,xf))*(h/2) + sum;
end
