function [ Salida ] = Runge-Kutta(Funcion,t0,tf,y0,M)
 h=(tf-t0)/M;
 T=t0:h:tf; 
 cant = length(T);
 Y = zeros(1,cant); %se necesita establecesr una columna y una n filas
 Y(1)=y0;
 for tk = 1:M
    f1=feval(Funcion,T(tk),Y(tk))
    f2=feval(Funcion,T(tk)+h/2,Y(tk)+h/2*f1)
    f3=feval(Funcion,T(tk)+h/2,Y(tk)+h/2*f2)
    f4=feval(Funcion,T(tk)+h,Y(tk)+h*f3)
    Y(tk+1)=Y(tk)+h/6*(f1+2*f2+2*f3+f4);
 end
 Salida=[T' Y'];
end

