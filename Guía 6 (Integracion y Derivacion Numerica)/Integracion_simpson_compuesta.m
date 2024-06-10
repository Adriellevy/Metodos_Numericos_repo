function S = Integracion_simpson_compuesta(F,a,b,M)
%INTEGRACION_SIMPSON_COMPUESTA Summary of this function goes here
%   recibo: 
%   F = la funcion a pasar
%   a = Limite superior
%   b = Limite inferior 
%   M = la cantidad maxima de iteraciones
h=(b-a)/2M;
sum=0;
x0=a; 
xf=b;

for k=3:M-2
    xk=xo+2k*h;
    xk_1=xo+(2k-1)*h;
    xk_2=xo+(2k-2)*h;
    sum = sum +feval(F,xk_2)+4*feval(F,xk_1)+feval(F,xk);
end
S = (sum)*(h/3);
end

